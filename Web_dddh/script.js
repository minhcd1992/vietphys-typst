/* ===================================================================
   VẬT LÝ 11 - CHUYÊN ĐỀ DAO ĐỘNG CƠ HỌC (GDPT 2018)
   INTERACTIVE JAVASCRIPT ENGINE (SUNLIGHT PIXEL EDITION)
   - KaTeX Auto-Render
   - Accordion for Solutions
   - Canvas Simulator 1: Vòng tròn lượng giác & Đồ thị sóng
   - Canvas Simulator 2: Dao động tắt dần & Đường cong Cộng hưởng
   - Interactive Quiz Engine (10 câu hỏi chuẩn GDPT 2018)
   - Back to Top & Scrollspy
   =================================================================== */

document.addEventListener('DOMContentLoaded', () => {
  initKaTeX();
  initAccordion();
  initSidebarNavigation();
  initDrawingTools();
  initSim1();
  initSim2();
  initQuiz();
  initScrollspy();
});

/* -------------------------------------------------------------------
   1. KaTeX Auto-Render Helper
------------------------------------------------------------------- */
function initKaTeX() {
  if (typeof renderMathInElement === 'function') {
    renderMathInElement(document.body, {
      delimiters: [
        { left: '$$', right: '$$', display: true },
        { left: '$', right: '$', display: false },
        { left: '\\(', right: '\\)', display: false },
        { left: '\\[', right: '\\]', display: true }
      ],
      throwOnError: false
    });
  }
}

/* -------------------------------------------------------------------
   2. Accordions for Solutions
------------------------------------------------------------------- */
function initAccordion() {
  const buttons = document.querySelectorAll('.solution-btn, .solution-toggle');
  buttons.forEach(btn => {
    btn.addEventListener('click', () => {
      const targetId = btn.getAttribute('data-target');
      const content = document.getElementById(targetId);
      if (content) {
        content.classList.toggle('show');
        const isShown = content.classList.contains('show');
        btn.innerHTML = isShown 
          ? '<i class="fas fa-chevron-up"></i> Ẩn lời giải chi tiết'
          : '<i class="fas fa-eye"></i> Xem lời giải chi tiết';
        if (isShown && typeof renderMathInElement === 'function') {
          renderMathInElement(content, {
            delimiters: [
              { left: '$$', right: '$$', display: true },
              { left: '$', right: '$', display: false }
            ],
            throwOnError: false
          });
        }
      }
    });
  });
}

/* -------------------------------------------------------------------
   3. Canvas Simulator 1: Vòng tròn lượng giác & Sóng DĐĐH đồng bộ
------------------------------------------------------------------- */
function initSim1() {
  const canvas = document.getElementById('sim1Canvas');
  if (!canvas) return;
  const ctx = canvas.getContext('2d');

  // Controls
  const ampInput = document.getElementById('sim1Amp');
  const omegaInput = document.getElementById('sim1Omega');
  const phiInput = document.getElementById('sim1Phi');
  const showVectorsCheck = document.getElementById('sim1Vectors');
  const playPauseBtn = document.getElementById('sim1PlayPause');
  const resetBtn = document.getElementById('sim1Reset');

  // Realtime display labels
  const ampVal = document.getElementById('sim1AmpVal');
  const omegaVal = document.getElementById('sim1OmegaVal');
  const phiVal = document.getElementById('sim1PhiVal');

  const valTime = document.getElementById('valTime');
  const valX = document.getElementById('valX');
  const valV = document.getElementById('valV');
  const valA = document.getElementById('valA');
  const valWd = document.getElementById('valWd');
  const valWt = document.getElementById('valWt');

  let isRunning = true;
  let t = 0;
  let lastTimestamp = performance.now();

  function resizeCanvas() {
    const rect = canvas.parentElement.getBoundingClientRect();
    canvas.width = rect.width * window.devicePixelRatio;
    canvas.height = rect.height * window.devicePixelRatio;
    ctx.scale(window.devicePixelRatio, window.devicePixelRatio);
  }
  window.addEventListener('resize', resizeCanvas);
  resizeCanvas();

  if (ampInput) {
    ampInput.addEventListener('input', () => {
      ampVal.textContent = ampInput.value + ' cm';
    });
  }
  if (omegaInput) {
    omegaInput.addEventListener('input', () => {
      omegaVal.textContent = omegaInput.value + ' rad/s';
    });
  }
  if (phiInput) {
    phiInput.addEventListener('input', () => {
      const v = parseFloat(phiInput.value);
      phiVal.textContent = (v / Math.PI).toFixed(2) + 'π rad';
    });
  }

  if (playPauseBtn) {
    playPauseBtn.addEventListener('click', () => {
      isRunning = !isRunning;
      playPauseBtn.innerHTML = isRunning 
        ? '<i class="fas fa-pause"></i> Tạm dừng'
        : '<i class="fas fa-play"></i> Tiếp tục';
    });
  }

  if (resetBtn) {
    resetBtn.addEventListener('click', () => {
      t = 0;
      if (!isRunning) {
        isRunning = true;
        playPauseBtn.innerHTML = '<i class="fas fa-pause"></i> Tạm dừng';
      }
    });
  }

  function loop(now) {
    const dt = (now - lastTimestamp) / 1000;
    lastTimestamp = now;

    if (isRunning) {
      t += dt;
    }

    renderSim1(t);
    requestAnimationFrame(loop);
  }
  requestAnimationFrame(loop);

  function renderSim1(time) {
    const width = canvas.width / window.devicePixelRatio;
    const height = canvas.height / window.devicePixelRatio;

    ctx.clearRect(0, 0, width, height);

    const A = parseFloat(ampInput ? ampInput.value : 5); // cm
    const omega = parseFloat(omegaInput ? omegaInput.value : 2); // rad/s
    const phi = parseFloat(phiInput ? phiInput.value : 0); // rad
    const showVectors = showVectorsCheck ? showVectorsCheck.checked : true;

    // Split Canvas into two sections: Left (Circle) and Right (Wave x-t graph)
    const circleCenterX = width * 0.28;
    const circleCenterY = height * 0.5;
    const maxRadius = Math.min(width * 0.22, height * 0.38);
    const scalePix = maxRadius / 10; // 10cm is max slider
    const R = A * scalePix;

    const graphStartX = width * 0.54;
    const graphEndX = width * 0.95;
    const graphWidth = graphEndX - graphStartX;

    // Current phase angle
    const currentPhase = omega * time + phi;
    const currentX_cm = A * Math.cos(currentPhase);
    const currentV_cm = -omega * A * Math.sin(currentPhase);
    const currentA_cm = -omega * omega * currentX_cm;

    // Update realtime readouts
    if (valTime) valTime.textContent = time.toFixed(2) + ' s';
    if (valX) valX.textContent = currentX_cm.toFixed(2) + ' cm';
    if (valV) valV.textContent = currentV_cm.toFixed(2) + ' cm/s';
    if (valA) valA.textContent = currentA_cm.toFixed(2) + ' cm/s²';

    // Energy percentage
    const wtRatio = Math.pow(Math.cos(currentPhase), 2) * 100;
    const wdRatio = Math.pow(Math.sin(currentPhase), 2) * 100;
    if (valWt) valWt.textContent = wtRatio.toFixed(1) + '%';
    if (valWd) valWd.textContent = wdRatio.toFixed(1) + '%';

    // 1. Draw Grid lines and Axes for Circle
    ctx.save();
    ctx.strokeStyle = 'rgba(255, 255, 255, 0.12)';
    ctx.lineWidth = 1;

    // Reference axes
    ctx.beginPath();
    ctx.moveTo(circleCenterX - maxRadius - 20, circleCenterY);
    ctx.lineTo(circleCenterX + maxRadius + 20, circleCenterY);
    ctx.moveTo(circleCenterX, circleCenterY - maxRadius - 20);
    ctx.lineTo(circleCenterX, circleCenterY + maxRadius + 20);
    ctx.stroke();

    // Circle border
    ctx.beginPath();
    ctx.arc(circleCenterX, circleCenterY, R, 0, Math.PI * 2);
    ctx.strokeStyle = '#f59e0b';
    ctx.lineWidth = 2.5;
    ctx.stroke();

    // Labels on circle axis: -A, O, +A
    ctx.fillStyle = '#fef08a';
    ctx.font = 'bold 11px JetBrains Mono';
    ctx.fillText('+A (' + A + ')', circleCenterX + R - 10, circleCenterY + 16);
    ctx.fillText('-A (-' + A + ')', circleCenterX - R - 20, circleCenterY + 16);
    ctx.fillText('O', circleCenterX - 12, circleCenterY + 16);
    ctx.fillText('Trục x (cm)', circleCenterX + maxRadius - 10, circleCenterY - 8);

    // Rotating Point M on circle
    const pointMx = circleCenterX + R * Math.cos(-currentPhase);
    const pointMy = circleCenterY + R * Math.sin(-currentPhase);

    // Vector OM
    ctx.beginPath();
    ctx.moveTo(circleCenterX, circleCenterY);
    ctx.lineTo(pointMx, pointMy);
    ctx.strokeStyle = '#fbbf24';
    ctx.lineWidth = 2.5;
    ctx.stroke();

    // Point M circle marker
    ctx.beginPath();
    ctx.arc(pointMx, pointMy, 6, 0, Math.PI * 2);
    ctx.fillStyle = '#ea580c';
    ctx.fill();
    ctx.strokeStyle = '#ffffff';
    ctx.lineWidth = 2;
    ctx.stroke();
    ctx.fillText('M(t)', pointMx + 8, pointMy - 8);

    // Projection point P on horizontal axis Ox
    const pointPx = circleCenterX + currentX_cm * scalePix;
    const pointPy = circleCenterY;

    // Dotted projection line from M to P
    ctx.setLineDash([4, 4]);
    ctx.strokeStyle = 'rgba(255, 255, 255, 0.4)';
    ctx.lineWidth = 1;
    ctx.beginPath();
    ctx.moveTo(pointMx, pointMy);
    ctx.lineTo(pointPx, pointPy);
    ctx.stroke();
    ctx.setLineDash([]);

    // Point P marker (vật dao động điều hòa)
    ctx.beginPath();
    ctx.arc(pointPx, pointPy, 7, 0, Math.PI * 2);
    ctx.fillStyle = '#facc15';
    ctx.fill();
    ctx.strokeStyle = '#ffffff';
    ctx.lineWidth = 2;
    ctx.stroke();
    ctx.fillText('P (x=' + currentX_cm.toFixed(1) + ')', pointPx - 20, pointPy + 24);

    // Show Vectors v and a if enabled
    if (showVectors) {
      // Velocity vector (orange/yellow) from P: v = -omega*A*sin(phi)
      const vScale = 0.5 * scalePix / omega;
      const vxEnd = pointPx + currentV_cm * vScale;
      drawArrow(ctx, pointPx, pointPy - 12, vxEnd, pointPy - 12, '#fbbf24', 'v');

      // Acceleration vector (green/rose) from P: points toward O
      const aScale = 0.25 * scalePix / (omega * omega);
      const axEnd = pointPx + currentA_cm * aScale;
      drawArrow(ctx, pointPx, pointPy - 24, axEnd, pointPy - 24, '#4ade80', 'a');
    }

    // 2. Draw Waveform graph x(t) on the Right
    const graphZeroY = height * 0.5;
    ctx.strokeStyle = 'rgba(255, 255, 255, 0.15)';
    ctx.lineWidth = 1;

    // Horizontal time axis
    ctx.beginPath();
    ctx.moveTo(graphStartX - 10, graphZeroY);
    ctx.lineTo(graphEndX + 20, graphZeroY);
    ctx.stroke();

    // Vertical displacement axis
    ctx.beginPath();
    ctx.moveTo(graphStartX, graphZeroY - maxRadius - 10);
    ctx.lineTo(graphStartX, graphZeroY + maxRadius + 10);
    ctx.stroke();

    ctx.fillStyle = '#fef08a';
    ctx.fillText('x (cm)', graphStartX + 8, graphZeroY - maxRadius);
    ctx.fillText('t (s)', graphEndX + 5, graphZeroY + 16);

    // Draw limits +A and -A
    ctx.setLineDash([3, 3]);
    ctx.strokeStyle = 'rgba(255, 255, 255, 0.2)';
    ctx.beginPath();
    ctx.moveTo(graphStartX, graphZeroY - R);
    ctx.lineTo(graphEndX, graphZeroY - R);
    ctx.moveTo(graphStartX, graphZeroY + R);
    ctx.lineTo(graphEndX, graphZeroY + R);
    ctx.stroke();
    ctx.setLineDash([]);

    ctx.fillText('+A', graphStartX - 24, graphZeroY - R + 4);
    ctx.fillText('-A', graphStartX - 24, graphZeroY + R + 4);

    // Waveform curve: show 3 periods
    const T = (2 * Math.PI) / omega;
    const timeSpan = Math.max(3 * T, 4);
    const tMin = Math.max(0, time - timeSpan * 0.75);

    ctx.beginPath();
    ctx.strokeStyle = '#f59e0b';
    ctx.lineWidth = 2.5;
    let first = true;
    for (let px = 0; px <= graphWidth; px += 2) {
      const curT = tMin + (px / graphWidth) * timeSpan;
      const phaseAtT = omega * curT + phi;
      const xVal = A * Math.cos(phaseAtT);
      const py = graphZeroY - xVal * scalePix;
      if (first) {
        ctx.moveTo(graphStartX + px, py);
        first = false;
      } else {
        ctx.lineTo(graphStartX + px, py);
      }
    }
    ctx.stroke();

    // Current time cursor on graph
    const cursorX = graphStartX + ((time - tMin) / timeSpan) * graphWidth;
    const cursorY = graphZeroY - currentX_cm * scalePix;

    // Vertical line cursor
    ctx.setLineDash([2, 2]);
    ctx.strokeStyle = 'rgba(251, 191, 36, 0.8)';
    ctx.lineWidth = 1.5;
    ctx.beginPath();
    ctx.moveTo(cursorX, graphZeroY - maxRadius);
    ctx.lineTo(cursorX, graphZeroY + maxRadius);
    ctx.stroke();
    ctx.setLineDash([]);

    // Glowing point on curve
    ctx.beginPath();
    ctx.arc(cursorX, cursorY, 6, 0, Math.PI * 2);
    ctx.fillStyle = '#ea580c';
    ctx.fill();
    ctx.strokeStyle = '#fff';
    ctx.lineWidth = 2;
    ctx.stroke();

    // Connecting dashed horizontal line
    ctx.setLineDash([3, 3]);
    ctx.strokeStyle = 'rgba(245, 158, 11, 0.4)';
    ctx.beginPath();
    ctx.moveTo(pointPx, pointPy);
    ctx.lineTo(cursorX, cursorY);
    ctx.stroke();
    ctx.setLineDash([]);

    ctx.restore();
  }

  function drawArrow(ctx, x1, y1, x2, y2, color, label) {
    if (Math.abs(x2 - x1) < 2) return;
    ctx.save();
    ctx.strokeStyle = color;
    ctx.fillStyle = color;
    ctx.lineWidth = 2;

    ctx.beginPath();
    ctx.moveTo(x1, y1);
    ctx.lineTo(x2, y1);
    ctx.stroke();

    // Arrowhead
    const dir = x2 > x1 ? 1 : -1;
    ctx.beginPath();
    ctx.moveTo(x2, y1);
    ctx.lineTo(x2 - dir * 6, y1 - 4);
    ctx.lineTo(x2 - dir * 6, y1 + 4);
    ctx.closePath();
    ctx.fill();

    ctx.font = 'bold 11px JetBrains Mono';
    ctx.fillText(label, (x1 + x2) / 2 - 4, y1 - 4);
    ctx.restore();
  }
}

/* -------------------------------------------------------------------
   4. Canvas Simulator 2: Dao động tắt dần & Đường cong Cộng hưởng
------------------------------------------------------------------- */
function initSim2() {
  const canvas = document.getElementById('sim2Canvas');
  if (!canvas) return;
  const ctx = canvas.getContext('2d');

  // Controls
  const dampingInput = document.getElementById('sim2Damping');
  const drivingFreqInput = document.getElementById('sim2DriveFreq');
  const viewModeRadios = document.querySelectorAll('input[name="sim2Mode"]');
  const resetBtn = document.getElementById('sim2Reset');

  const dampingVal = document.getElementById('sim2DampingVal');
  const driveFreqVal = document.getElementById('sim2DriveFreqVal');
  const ampResonanceVal = document.getElementById('sim2AmpResonanceVal');

  let currentMode = 'resonance';
  let t = 0;
  let lastTimestamp = performance.now();

  function resizeCanvas() {
    const rect = canvas.parentElement.getBoundingClientRect();
    canvas.width = rect.width * window.devicePixelRatio;
    canvas.height = rect.height * window.devicePixelRatio;
    ctx.scale(window.devicePixelRatio, window.devicePixelRatio);
  }
  window.addEventListener('resize', resizeCanvas);
  resizeCanvas();

  viewModeRadios.forEach(radio => {
    radio.addEventListener('change', () => {
      currentMode = radio.value;
    });
  });

  if (dampingInput) {
    dampingInput.addEventListener('input', () => {
      dampingVal.textContent = parseFloat(dampingInput.value).toFixed(2);
    });
  }

  if (drivingFreqInput) {
    drivingFreqInput.addEventListener('input', () => {
      driveFreqVal.textContent = parseFloat(drivingFreqInput.value).toFixed(2) + ' Hz';
    });
  }

  if (resetBtn) {
    resetBtn.addEventListener('click', () => {
      t = 0;
    });
  }

  function loop(now) {
    const dt = (now - lastTimestamp) / 1000;
    lastTimestamp = now;
    t += dt;

    renderSim2(t);
    requestAnimationFrame(loop);
  }
  requestAnimationFrame(loop);

  function renderSim2(time) {
    const width = canvas.width / window.devicePixelRatio;
    const height = canvas.height / window.devicePixelRatio;
    ctx.clearRect(0, 0, width, height);

    const b = parseFloat(dampingInput ? dampingInput.value : 0.15);
    const fDrive = parseFloat(drivingFreqInput ? drivingFreqInput.value : 1.0);
    const f0 = 1.0;
    const F0 = 8.0;
    const m = 1.0;
    const omega0 = 2 * Math.PI * f0;
    const omegaDrive = 2 * Math.PI * fDrive;

    const denom = Math.sqrt(Math.pow(m * (omega0 * omega0 - omegaDrive * omegaDrive), 2) + Math.pow(b * omegaDrive, 2));
    const currentAmp = Math.min(25, F0 / (denom + 0.1));

    if (ampResonanceVal) {
      ampResonanceVal.textContent = currentAmp.toFixed(2) + ' cm';
    }

    if (currentMode === 'resonance') {
      renderResonanceGraph(width, height, fDrive, b, currentAmp, f0, F0, m);
    } else {
      renderDampedGraph(width, height, time, b);
    }

    // Spring pendulum
    renderBottomSpring(width, height, time, omegaDrive, currentAmp);
  }

  function renderResonanceGraph(width, height, fCurrent, b, currentAmp, f0, F0, m) {
    const margin = { top: 30, right: 40, bottom: 90, left: 60 };
    const plotW = width - margin.left - margin.right;
    const plotH = height - margin.top - margin.bottom;

    const maxF = 2.5;
    const maxA = 26;

    // Axes
    ctx.strokeStyle = 'rgba(255, 255, 255, 0.2)';
    ctx.lineWidth = 1;
    ctx.beginPath();
    ctx.moveTo(margin.left, margin.top + plotH);
    ctx.lineTo(margin.left + plotW, margin.top + plotH);
    ctx.moveTo(margin.left, margin.top);
    ctx.lineTo(margin.left + plotH);
    ctx.stroke();

    ctx.fillStyle = '#fef08a';
    ctx.font = 'bold 12px Plus Jakarta Sans';
    ctx.fillText('Tần số ngoại lực f (Hz)', margin.left + plotW - 130, margin.top + plotH + 30);
    ctx.fillText('Biên độ A (cm)', margin.left - 45, margin.top - 10);

    // Natural frequency vertical dashed line f = f0
    const xF0 = margin.left + (f0 / maxF) * plotW;
    ctx.setLineDash([4, 4]);
    ctx.strokeStyle = '#f59e0b';
    ctx.beginPath();
    ctx.moveTo(xF0, margin.top);
    ctx.lineTo(xF0, margin.top + plotH);
    ctx.stroke();
    ctx.setLineDash([]);
    ctx.fillStyle = '#f59e0b';
    ctx.font = 'bold 11px JetBrains Mono';
    ctx.fillText('f₀ = 1.0 Hz (Cộng hưởng)', xF0 - 65, margin.top + 16);

    // Draw reference damping curve
    drawResCurve(0.60, 'rgba(255, 255, 255, 0.3)', 2, false);
    // Draw active user damping curve
    drawResCurve(b, '#facc15', 3.5, true);

    function drawResCurve(dampingB, color, lineW, isUser) {
      ctx.beginPath();
      ctx.strokeStyle = color;
      ctx.lineWidth = lineW;
      const omega0 = 2 * Math.PI * f0;

      let first = true;
      for (let px = 0; px <= plotW; px += 2) {
        const curF = (px / plotW) * maxF;
        if (curF <= 0.05) continue;
        const curOmega = 2 * Math.PI * curF;
        const den = Math.sqrt(Math.pow(m * (omega0 * omega0 - curOmega * curOmega), 2) + Math.pow(dampingB * curOmega, 2));
        const amp = Math.min(maxA, F0 / (den + 0.1));
        const py = margin.top + plotH - (amp / maxA) * plotH;

        if (first) {
          ctx.moveTo(margin.left + px, py);
          first = false;
        } else {
          ctx.lineTo(margin.left + px, py);
        }
      }
      ctx.stroke();
    }

    // Current operating point
    const curX = margin.left + (fCurrent / maxF) * plotW;
    const curY = margin.top + plotH - (currentAmp / maxA) * plotH;

    ctx.beginPath();
    ctx.arc(curX, curY, 8, 0, Math.PI * 2);
    ctx.fillStyle = '#ea580c';
    ctx.fill();
    ctx.strokeStyle = '#ffffff';
    ctx.lineWidth = 2.5;
    ctx.stroke();

    // Tooltip
    ctx.fillStyle = '#292524';
    ctx.fillRect(curX - 65, curY - 42, 130, 30);
    ctx.strokeStyle = '#f59e0b';
    ctx.lineWidth = 1;
    ctx.strokeRect(curX - 65, curY - 42, 130, 30);
    ctx.fillStyle = '#fff';
    ctx.font = '10px JetBrains Mono';
    ctx.fillText(`f = ${fCurrent.toFixed(2)} Hz`, curX - 55, curY - 30);
    ctx.fillText(`A = ${currentAmp.toFixed(2)} cm`, curX - 55, curY - 18);
  }

  function renderDampedGraph(width, height, time, b) {
    const margin = { top: 30, right: 40, bottom: 90, left: 60 };
    const plotW = width - margin.left - margin.right;
    const plotH = height - margin.top - margin.bottom;
    const zeroY = margin.top + plotH / 2;

    const A0 = 15;
    const omega = 2 * Math.PI * 1.0;
    const totalTime = 8;

    // Axes
    ctx.strokeStyle = 'rgba(255, 255, 255, 0.2)';
    ctx.lineWidth = 1;
    ctx.beginPath();
    ctx.moveTo(margin.left, zeroY);
    ctx.lineTo(margin.left + plotW, zeroY);
    ctx.moveTo(margin.left, margin.top);
    ctx.lineTo(margin.left, margin.top + plotH);
    ctx.stroke();

    ctx.fillStyle = '#fef08a';
    ctx.font = 'bold 12px Plus Jakarta Sans';
    ctx.fillText('Thời gian t (s)', margin.left + plotW - 100, zeroY + 22);
    ctx.fillText('Li độ x (cm)', margin.left - 45, margin.top - 10);

    const beta = b * 1.5;
    ctx.setLineDash([4, 4]);
    ctx.strokeStyle = '#ef4444';
    ctx.lineWidth = 1.5;

    // Upper envelope
    ctx.beginPath();
    for (let px = 0; px <= plotW; px += 3) {
      const curT = (px / plotW) * totalTime;
      const envA = A0 * Math.exp(-beta * curT);
      const py = zeroY - (envA / A0) * (plotH * 0.45);
      if (px === 0) ctx.moveTo(margin.left + px, py);
      else ctx.lineTo(margin.left + px, py);
    }
    ctx.stroke();

    // Lower envelope
    ctx.beginPath();
    for (let px = 0; px <= plotW; px += 3) {
      const curT = (px / plotW) * totalTime;
      const envA = A0 * Math.exp(-beta * curT);
      const py = zeroY + (envA / A0) * (plotH * 0.45);
      if (px === 0) ctx.moveTo(margin.left + px, py);
      else ctx.lineTo(margin.left + px, py);
    }
    ctx.stroke();
    ctx.setLineDash([]);

    // Damped wave
    ctx.beginPath();
    ctx.strokeStyle = '#facc15';
    ctx.lineWidth = 2.5;
    for (let px = 0; px <= plotW; px += 2) {
      const curT = (px / plotW) * totalTime;
      const xVal = A0 * Math.exp(-beta * curT) * Math.cos(omega * curT);
      const py = zeroY - (xVal / A0) * (plotH * 0.45);
      if (px === 0) ctx.moveTo(margin.left + px, py);
      else ctx.lineTo(margin.left + px, py);
    }
    ctx.stroke();
  }

  function renderBottomSpring(width, height, time, omega, amp) {
    const springCenterY = height - 38;
    const midX = width * 0.5;
    const maxDisp = 100;
    const disp = (amp / 25) * maxDisp * Math.cos(omega * time);

    ctx.save();
    // Anchor
    ctx.fillStyle = '#78716c';
    ctx.fillRect(width * 0.15, springCenterY - 12, 10, 24);

    // Spring coils
    const startX = width * 0.15 + 10;
    const endX = midX + disp;
    const coils = 14;
    const coilW = (endX - startX) / coils;

    ctx.beginPath();
    ctx.moveTo(startX, springCenterY);
    ctx.strokeStyle = '#f59e0b';
    ctx.lineWidth = 2;
    for (let i = 0; i < coils; i++) {
      const cx1 = startX + (i + 0.25) * coilW;
      const cy1 = springCenterY - 8;
      const cx2 = startX + (i + 0.75) * coilW;
      const cy2 = springCenterY + 8;
      ctx.lineTo(cx1, cy1);
      ctx.lineTo(cx2, cy2);
    }
    ctx.lineTo(endX, springCenterY);
    ctx.stroke();

    // Mass
    ctx.fillStyle = '#ea580c';
    ctx.fillRect(endX, springCenterY - 14, 28, 28);
    ctx.strokeStyle = '#ffffff';
    ctx.lineWidth = 1.5;
    ctx.strokeRect(endX, springCenterY - 14, 28, 28);
    ctx.fillStyle = '#ffffff';
    ctx.font = 'bold 11px JetBrains Mono';
    ctx.fillText('m', endX + 8, springCenterY + 4);

    ctx.restore();
  }
}

/* -------------------------------------------------------------------
   5. Interactive Quiz Engine (10 câu hỏi chuẩn GDPT 2018)
------------------------------------------------------------------- */
const quizData = [
  {
    level: "Nhận biết",
    question: "Một chất điểm dao động điều hòa theo phương trình $x = A\\cos(\\omega t + \\varphi)$. Đại lượng $(\\omega t + \\varphi)$ được gọi là gì?",
    options: [
      "Biên độ dao động",
      "Pha dao động tại thời điểm t",
      "Pha ban đầu của dao động",
      "Tần số góc của dao động"
    ],
    correct: 1,
    explanation: "Đại lượng $(\\omega t + \\varphi)$ là **pha dao động tại thời điểm t**, cho biết trạng thái dao động (vị trí li độ và chiều chuyển động) của chất điểm ở thời điểm đó. $\\varphi$ là pha ban đầu tại $t = 0$."
  },
  {
    level: "Nhận biết",
    question: "Trong dao động điều hòa, mối liên hệ về pha giữa gia tốc $a$ và li độ $x$ là:",
    options: [
      "Gia tốc nhanh pha hơn li độ góc $\\frac{\\pi}{2}$",
      "Gia tốc chậm pha hơn li độ góc $\\frac{\\pi}{2}$",
      "Gia tốc ngược pha với li độ (lệch pha góc $\\pi$)",
      "Gia tốc cùng pha với li độ"
    ],
    correct: 2,
    explanation: "Phương trình gia tốc $a = -\\omega^2 x = \\omega^2 A\\cos(\\omega t + \\varphi + \\pi)$. Do đó, vectơ gia tốc luôn ngược hướng với vectơ li độ, nghĩa là **gia tốc ngược pha với li độ** (độ lệch pha bằng $\\pi$ rad)."
  },
  {
    level: "Thông hiểu",
    question: "Một con lắc lò xo dao động điều hòa với chu kỳ $T$. Động năng của vật biến thiên tuần hoàn theo thời gian với chu kỳ bằng bao nhiêu?",
    options: [
      "$T' = T$",
      "$T' = \\frac{T}{2}$",
      "$T' = 2T$",
      "$T' = 4T$"
    ],
    correct: 1,
    explanation: "Động năng biến thiên theo hàm $\\sin^2(\\omega t+\\varphi) = \\frac{1 - \\cos(2\\omega t + 2\\varphi)}{2}$. Tần số góc của động năng là $\\omega' = 2\\omega$, do đó chu kỳ biến thiên của động năng và thế năng là **$T' = \\frac{T}{2}$**."
  },
  {
    level: "Thông hiểu",
    question: "Hiện tượng cộng hưởng cơ học xảy ra khi nào?",
    options: [
      "Biên độ của ngoại lực cưỡng bức đạt giá trị cực đại",
      "Tần số của ngoại lực cưỡng bức bằng tần số dao động riêng của hệ ($f_{nl} = f_0$)",
      "Chu kỳ ngoại lực cưỡng bức lớn hơn rất nhiều so với chu kỳ riêng",
      "Lực ma sát của môi trường triệt tiêu hoàn toàn"
    ],
    correct: 1,
    explanation: "Hiện tượng cộng hưởng là hiện tượng biên độ dao động cưỡng bức tăng đến giá trị cực đại khi **tần số của ngoại lực cưỡng bức bằng (hoặc xấp xỉ bằng) tần số dao động riêng của hệ** ($f_{nl} \\approx f_0$)."
  },
  {
    level: "Thông hiểu",
    question: "Nguyên nhân chính gây ra hiện tượng dao động tắt dần trong cơ học là do:",
    options: [
      "Trọng lực tác dụng lên vật",
      "Lực đàn hồi của lò xo giảm dần",
      "Lực cản môi trường và lực ma sát làm tiêu hao cơ năng thành nhiệt",
      "Khối lượng của vật nặng bị biến đổi"
    ],
    correct: 2,
    explanation: "Dao động tắt dần là dao động có biên độ giảm dần theo thời gian. Nguyên nhân trực tiếp là **ma sát và lực cản của môi trường**, biến đổi cơ năng của hệ thành nội năng (nhiệt năng) thoát ra môi trường."
  },
  {
    level: "Vận dụng",
    question: "Một vật dao động điều hòa với biên độ $A = 6\\text{ cm}$ và chu kỳ $T = 2\\text{ s}$. Tốc độ trung bình lớn nhất của vật trong khoảng thời gian $\\Delta t = \\frac{1}{3}\\text{ s}$ là:",
    options: [
      "$9\\text{ cm/s}$",
      "$18\\text{ cm/s}$",
      "$12\\text{ cm/s}$",
      "$15\\text{ cm/s}$"
    ],
    correct: 1,
    explanation: "Góc quét trong $\\Delta t = \\frac{1}{3}\\text{ s} = \\frac{T}{6}$ là $\\Delta \\varphi = \\frac{2\\pi}{T}\\cdot \\frac{T}{6} = \\frac{\\pi}{3}$. Quãng đường lớn nhất $S_{max} = 2A\\sin\\left(\\frac{\\Delta\\varphi}{2}\right) = 2\\cdot 6\\cdot \\sin\\left(\\frac{\\pi}{6}\right) = 6\\text{ cm}$. Tốc độ trung bình lớn nhất: $v_{tb\\ max} = \\frac{S_{max}}{\\Delta t} = \\frac{6}{1/3} = 18\\text{ cm/s}$."
  },
  {
    level: "Vận dụng",
    question: "Tại vị trí li độ $x$ mà động năng gấp 3 lần thế năng ($W_d = 3W_t$), li độ $x$ có giá trị bằng bao nhiêu theo biên độ $A$?",
    options: [
      "$x = \\pm \\frac{A}{2}$",
      "$x = \\pm \\frac{A\\sqrt{3}}{2}$",
      "$x = \\pm \\frac{A\\sqrt{2}}{2}$",
      "$x = \\pm \\frac{A}{4}$"
    ],
    correct: 0,
    explanation: "Công thức tỉ số: Khi $W_d = n W_t$, cơ năng $W = (n+1)W_t \\iff \\frac{1}{2}kA^2 = (n+1)\\frac{1}{2}kx^2 \\implies x = \\pm \\frac{A}{\\sqrt{n+1}}$. Với $n = 3 \\implies x = \\pm \\frac{A}{\\sqrt{4}} = \\pm \\frac{A}{2}$."
  },
  {
    level: "Vận dụng",
    question: "Một con lắc lò xo nằm ngang có $k = 100\\text{ N/m}$, vật nặng $m = 100\\text{ g}$. Kéo vật lệch khỏi VTCB đoạn $A_0 = 5\\text{ cm}$ rồi buông nhẹ. Biết hệ số ma sát giữa vật và sàn là $\\mu = 0,02$, lấy $g = 10\\text{ m/s}^2$. Tổng quãng đường vật đi được đến khi dừng hẳn là:",
    options: [
      "$6,25\\text{ m}$",
      "$12,5\\text{ m}$",
      "$3,125\\text{ m}$",
      "$2,5\\text{ m}$"
    ],
    correct: 0,
    explanation: "Theo định luật bảo toàn năng lượng: $\\frac{1}{2}k A_0^2 = A_{ms} = \\mu mg S \\implies S = \\frac{k A_0^2}{2\\mu mg} = \\frac{100\\cdot 0,05^2}{2\\cdot 0,02\\cdot 0,1\\cdot 10} = \\frac{0,25}{0,04} = 6,25\\text{ m}$."
  },
  {
    level: "Vận dụng cao",
    question: "Một chất điểm dao động điều hòa. Tại thời điểm $t_1$, li độ và vận tốc là $x_1 = 3\\text{ cm}$, $v_1 = 40\\text{ cm/s}$. Tại thời điểm $t_2$, li độ và vận tốc là $x_2 = 4\\text{ cm}$, $v_2 = 30\\text{ cm/s}$. Tần số góc $\\omega$ và biên độ $A$ là:",
    options: [
      "$\\omega = 10\\text{ rad/s};\\ A = 5\\text{ cm}$",
      "$\\omega = 20\\text{ rad/s};\\ A = 5\\text{ cm}$",
      "$\\omega = 10\\text{ rad/s};\\ A = 7\\text{ cm}$",
      "$\\omega = 15\\text{ rad/s};\\ A = 6\\text{ cm}$"
    ],
    correct: 0,
    explanation: "Sử dụng hệ thức độc lập mở rộng: $\\omega = \\sqrt{\\frac{v_1^2 - v_2^2}{x_2^2 - x_1^2}} = \\sqrt{\\frac{40^2 - 30^2}{4^2 - 3^2}} = \\sqrt{\\frac{700}{7}} = 10\\text{ rad/s}$. Sau đó thay vào: $A = \\sqrt{x_1^2 + \\frac{v_1^2}{\\omega^2}} = \\sqrt{3^2 + 4^2} = 5\\text{ cm}$."
  },
  {
    level: "Vận dụng cao",
    question: "Một người xách một xô nước đi trên đường. Mỗi bước đi dài $L = 50\\text{ cm}$. Nước trong xô dao động sóng sánh mạnh nhất khi người đó đi với tốc độ $v = 2,5\\text{ km/h}$. Tần số dao động riêng $f_0$ của nước trong xô là:",
    options: [
      "$1,39\\text{ Hz}$",
      "$0,72\\text{ Hz}$",
      "$2,50\\text{ Hz}$",
      "$5,00\\text{ Hz}$"
    ],
    correct: 0,
    explanation: "Đổi $v = 2,5\\text{ km/h} = \\frac{2,5}{3,6} = \\frac{25}{36}\\text{ m/s} \\approx 0,694\\text{ m/s}$. Chu kỳ ngoại lực mỗi bước chân: $T_{nl} = \\frac{L}{v} = \\frac{0,5}{25/36} = 0,72\\text{ s}$. Nước sóng sánh mạnh nhất khi xảy ra cộng hưởng: $T_0 = T_{nl} = 0,72\\text{ s} \\implies f_0 = \\frac{1}{T_0} = \\frac{1}{0,72} \\approx 1,39\\text{ Hz}$."
  }
];

function initQuiz() {
  const container = document.getElementById('quizQuestionsContainer');
  if (!container) return;

  let currentQuestion = 0;
  let userAnswers = new Array(quizData.length).fill(null);
  let hasSubmitted = false;

  const currentQSpan = document.getElementById('quizCurrentQ');
  const totalQSpan = document.getElementById('quizTotalQ');
  const btnPrev = document.getElementById('btnQuizPrev');
  const btnNext = document.getElementById('btnQuizNext');
  const btnSubmit = document.getElementById('btnQuizSubmit');
  const summaryBox = document.getElementById('quizSummary');
  const restartBtn = document.getElementById('btnQuizRestart');

  if (totalQSpan) totalQSpan.textContent = quizData.length;

  // Render question cards
  container.innerHTML = '';
  quizData.forEach((item, index) => {
    const card = document.createElement('div');
    card.className = 'quiz-card-item';
    card.id = `quizCard_${index}`;
    card.style.display = index === 0 ? 'block' : 'none';

    card.innerHTML = `
      <div style="display: flex; gap: 8px; margin-bottom: 10px;">
        <span class="sun-badge">${item.level}</span>
        <span class="sun-badge orange">Câu ${index + 1}/${quizData.length}</span>
      </div>
      <div class="q-stem">${item.question}</div>
      <div class="opt-list" id="optGrid_${index}">
        ${item.options.map((opt, optIdx) => `
          <div class="opt-choice" data-q="${index}" data-opt="${optIdx}">
            <div class="opt-tag">${String.fromCharCode(65 + optIdx)}</div>
            <div>${opt}</div>
          </div>
        `).join('')}
      </div>
      <div class="quiz-explanation-box" id="expl_${index}">
        <strong><i class="fas fa-lightbulb" style="color: #b45309"></i> Lời giải chi tiết:</strong>
        <p style="margin-top: 6px;">${item.explanation}</p>
      </div>
    `;

    container.appendChild(card);
  });

  // Attach click to options
  const optionItems = container.querySelectorAll('.opt-choice');
  optionItems.forEach(item => {
    item.addEventListener('click', () => {
      if (hasSubmitted) return;
      const qIndex = parseInt(item.getAttribute('data-q'));
      const optIndex = parseInt(item.getAttribute('data-opt'));

      userAnswers[qIndex] = optIndex;

      const parentGrid = document.getElementById(`optGrid_${qIndex}`);
      parentGrid.querySelectorAll('.opt-choice').forEach(el => el.classList.remove('selected'));
      item.classList.add('selected');
    });
  });

  if (btnPrev) {
    btnPrev.addEventListener('click', () => {
      if (currentQuestion > 0) {
        showQuestion(currentQuestion - 1);
      }
    });
  }

  if (btnNext) {
    btnNext.addEventListener('click', () => {
      if (currentQuestion < quizData.length - 1) {
        showQuestion(currentQuestion + 1);
      }
    });
  }

  if (btnSubmit) {
    btnSubmit.addEventListener('click', () => {
      const answeredCount = userAnswers.filter(a => a !== null).length;
      if (answeredCount < quizData.length) {
        const confirmSub = confirm(`Bạn mới trả lời ${answeredCount}/${quizData.length} câu. Bạn có muốn nộp bài chấm điểm ngay không?`);
        if (!confirmSub) return;
      }
      gradeQuiz();
    });
  }

  if (restartBtn) {
    restartBtn.addEventListener('click', () => {
      hasSubmitted = false;
      userAnswers = new Array(quizData.length).fill(null);
      container.style.display = 'block';
      summaryBox.style.display = 'none';
      btnSubmit.style.display = 'inline-flex';
      btnNext.style.display = 'inline-flex';
      btnPrev.style.display = 'inline-flex';

      optionItems.forEach(el => {
        el.className = 'opt-choice';
      });
      document.querySelectorAll('.quiz-explanation-box').forEach(el => {
        el.classList.remove('show');
      });

      showQuestion(0);
    });
  }

  function showQuestion(idx) {
    document.querySelectorAll('.quiz-card-item').forEach(c => c.style.display = 'none');
    const target = document.getElementById(`quizCard_${idx}`);
    if (target) {
      target.style.display = 'block';
      currentQuestion = idx;
      if (currentQSpan) currentQSpan.textContent = idx + 1;

      btnPrev.disabled = (idx === 0);
      btnNext.disabled = (idx === quizData.length - 1);
    }
  }

  function gradeQuiz() {
    hasSubmitted = true;
    let score = 0;

    quizData.forEach((q, idx) => {
      const userAns = userAnswers[idx];
      const optGrid = document.getElementById(`optGrid_${idx}`);
      const explBox = document.getElementById(`expl_${idx}`);

      if (explBox) explBox.classList.add('show');

      const options = optGrid.querySelectorAll('.opt-choice');
      options.forEach((optEl, oIdx) => {
        if (oIdx === q.correct) {
          optEl.classList.add('correct');
        } else if (oIdx === userAns) {
          optEl.classList.add('wrong');
        }
      });

      if (userAns === q.correct) {
        score++;
      }
    });

    initKaTeX();

    container.style.display = 'none';
    btnSubmit.style.display = 'none';
    btnNext.style.display = 'none';
    btnPrev.style.display = 'none';

    if (summaryBox) {
      summaryBox.style.display = 'block';
      const scoreNum = document.getElementById('quizScoreNum');
      const scoreRating = document.getElementById('quizRating');
      const scoreFeedback = document.getElementById('quizFeedback');

      const finalMark = (score / quizData.length) * 10;
      if (scoreNum) scoreNum.textContent = finalMark.toFixed(1);

      let ratingText = '';
      let feedbackText = '';

      if (finalMark >= 9) {
        ratingText = '🏆 XUẤT SẮC - THÀNH THẠO!';
        feedbackText = 'Bạn đã nắm cực kỳ vững lý thuyết dao động cơ, kỹ thuật vòng tròn lượng giác và bài toán cộng hưởng/tắt dần GDPT 2018!';
      } else if (finalMark >= 7) {
        ratingText = '👏 KHÁ TỐT - ĐẠT YÊU CẦU';
        feedbackText = 'Kiến thức cốt lõi rất vững. Hãy xem lại phần giải thích các câu nâng cao để đạt điểm 10 tuyệt đối nhé!';
      } else {
        ratingText = '📚 CẦN ÔN LẠI MỘT SỐ CÔNG THỨC';
        feedbackText = 'Đừng lo lắng! Hãy tra lại Bảng Tổng Hợp Công Thức ở đầu trang và xem lại đồ thị Hình 1.1, 3.1 rồi thi lại nhé!';
      }

      if (scoreRating) scoreRating.textContent = ratingText;
      if (scoreFeedback) scoreFeedback.textContent = feedbackText;
    }
  }

  initKaTeX();
}

/* -------------------------------------------------------------------
   6. YouTube-Style Vertical Sidebar Navigation
------------------------------------------------------------------- */
function initSidebarNavigation() {
  const menuToggleBtn = document.getElementById('menuToggleBtn');
  const sidebarOverlay = document.getElementById('sidebarOverlay');
  const sidebarLinks = document.querySelectorAll('.sidebar-link');
  const searchInput = document.getElementById('quickSearchInput');

  // Toggle Sidebar
  if (menuToggleBtn) {
    menuToggleBtn.addEventListener('click', () => {
      if (window.innerWidth <= 1024) {
        document.body.classList.toggle('sidebar-open');
      } else {
        document.body.classList.toggle('sidebar-collapsed');
      }
    });
  }

  // Click on backdrop overlay closes sidebar on mobile
  if (sidebarOverlay) {
    sidebarOverlay.addEventListener('click', () => {
      document.body.classList.remove('sidebar-open');
    });
  }

  // Auto-close drawer on mobile when clicking a link
  sidebarLinks.forEach(link => {
    link.addEventListener('click', () => {
      if (window.innerWidth <= 1024) {
        document.body.classList.remove('sidebar-open');
      }
      sidebarLinks.forEach(l => l.classList.remove('active'));
      link.classList.add('active');
    });
  });

  // Quick search filter for sidebar links & topics
  if (searchInput) {
    searchInput.addEventListener('input', (e) => {
      const query = e.target.value.toLowerCase().trim();
      sidebarLinks.forEach(link => {
        const text = link.textContent.toLowerCase();
        const sectionId = link.getAttribute('href').replace('#', '');
        const sectionEl = document.getElementById(sectionId);

        if (!query) {
          link.style.display = 'flex';
          if (sectionEl) sectionEl.style.display = '';
        } else if (text.includes(query) || (sectionEl && sectionEl.textContent.toLowerCase().includes(query))) {
          link.style.display = 'flex';
          if (sectionEl) sectionEl.style.display = '';
        } else {
          link.style.display = 'none';
        }
      });
    });
  }
}

/* -------------------------------------------------------------------
   7. Scrollspy & Back to Top
------------------------------------------------------------------- */
function initScrollspy() {
  const backToTopBtn = document.getElementById('backToTop');
  const sections = document.querySelectorAll('section[id], div[id^="ly-thuyet-"], div[id^="hien-tuong-"], div[id^="ki-thuat-"]');
  const sidebarLinks = document.querySelectorAll('.sidebar-link');

  window.addEventListener('scroll', () => {
    if (window.scrollY > 400) {
      backToTopBtn?.classList.add('show');
    } else {
      backToTopBtn?.classList.remove('show');
    }

    let current = '';
    sections.forEach(section => {
      const sectionTop = section.offsetTop - 110;
      if (window.scrollY >= sectionTop) {
        current = section.getAttribute('id');
      }
    });

    if (current) {
      sidebarLinks.forEach(link => {
        const targetHref = link.getAttribute('href');
        if (targetHref === `#${current}`) {
          sidebarLinks.forEach(l => l.classList.remove('active'));
          link.classList.add('active');
        }
      });
    }
  });

  backToTopBtn?.addEventListener('click', () => {
    window.scrollTo({ top: 0, behavior: 'smooth' });
  });
}

/* -------------------------------------------------------------------
   8. Full-Page Drawing Pen, Laser Pointer & Eraser System
   (Ultra-Smooth Continuous Bézier Curves, Exact Pixel Eraser & Undo)
------------------------------------------------------------------- */
function initDrawingTools() {
  const canvas = document.getElementById('annotationCanvas');
  const laserDot = document.getElementById('laserPointerDot');
  const eraserCircle = document.getElementById('eraserCursorCircle');
  const toolbar = document.getElementById('drawingToolbar');

  const btnCursor = document.getElementById('toolCursor');
  const btnPen = document.getElementById('toolPen');
  const btnLaser = document.getElementById('toolLaser');
  const btnEraser = document.getElementById('toolEraser');
  const btnUndo = document.getElementById('toolUndo');
  const btnClear = document.getElementById('toolClear');
  const btnToggleToolbar = document.getElementById('btnToggleToolbar');
  const toggleIcon = document.getElementById('toggleToolbarIcon');
  const colorDots = document.querySelectorAll('#colorSwatches .color-dot');
  const sizeBtns = document.querySelectorAll('#sizeSelector .size-btn');

  if (!canvas) return;
  const ctx = canvas.getContext('2d');

  let activeTool = 'cursor'; // 'cursor' | 'pen' | 'laser' | 'eraser'
  let currentColor = '#ea580c';
  let penWidth = 4;
  let eraserWidth = 40;
  let isDrawing = false;
  let currentPoints = [];
  let strokeHistory = []; // Vector history of all strokes for lossless resize & instant Undo

  // Helper: Calculate midpoint between two points
  function midPoint(p1, p2) {
    return {
      x: (p1.x + p2.x) / 2,
      y: (p1.y + p2.y) / 2
    };
  }

  // Update physical dimensions of visual eraser circle cursor to match eraser width
  function updateEraserVisualSize() {
    if (eraserCircle) {
      eraserCircle.style.width = eraserWidth + 'px';
      eraserCircle.style.height = eraserWidth + 'px';
    }
  }

  // Render a single stroke from vector points with smooth Bézier interpolation
  function renderSingleStroke(stroke) {
    if (!stroke || !stroke.points || stroke.points.length === 0) return;
    const pts = stroke.points;

    if (stroke.tool === 'eraser') {
      ctx.globalCompositeOperation = 'destination-out';
      ctx.strokeStyle = 'rgba(0, 0, 0, 1)';
      ctx.fillStyle = 'rgba(0, 0, 0, 1)';
      ctx.lineWidth = stroke.width;
      ctx.lineCap = 'round';
      ctx.lineJoin = 'round';
    } else {
      ctx.globalCompositeOperation = 'source-over';
      ctx.strokeStyle = stroke.color;
      ctx.fillStyle = stroke.color;
      ctx.lineWidth = stroke.width;
      ctx.lineCap = 'round';
      ctx.lineJoin = 'round';
    }

    // 1 point: solid round dot
    if (pts.length === 1) {
      ctx.beginPath();
      ctx.arc(pts[0].x, pts[0].y, stroke.width / 2, 0, Math.PI * 2);
      ctx.fill();
      return;
    }

    // 2 points: straight segment
    if (pts.length === 2) {
      ctx.beginPath();
      ctx.moveTo(pts[0].x, pts[0].y);
      ctx.lineTo(pts[1].x, pts[1].y);
      ctx.stroke();
      return;
    }

    // 3 or more points: continuous C1 smooth Bézier curves through midpoints
    ctx.beginPath();
    ctx.moveTo(pts[0].x, pts[0].y);
    const firstMid = midPoint(pts[0], pts[1]);
    ctx.lineTo(firstMid.x, firstMid.y);

    for (let i = 1; i < pts.length - 1; i++) {
      const nextMid = midPoint(pts[i], pts[i + 1]);
      ctx.quadraticCurveTo(pts[i].x, pts[i].y, nextMid.x, nextMid.y);
    }

    const lastPt = pts[pts.length - 1];
    ctx.lineTo(lastPt.x, lastPt.y);
    ctx.stroke();
  }

  // Redraw all strokes from history (100% vector fidelity, no pixel stretching or blur)
  function redrawAllStrokes() {
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    for (let i = 0; i < strokeHistory.length; i++) {
      renderSingleStroke(strokeHistory[i]);
    }
  }

  // Pixel-perfect canvas sizing matching exact client width & full document height
  function resizeCanvas() {
    const docWidth = document.documentElement.clientWidth;
    const docHeight = Math.max(
      document.body.scrollHeight,
      document.documentElement.scrollHeight,
      document.body.offsetHeight,
      document.documentElement.offsetHeight,
      window.innerHeight
    );

    if (canvas.width === docWidth && canvas.height === docHeight) return;

    canvas.width = docWidth;
    canvas.height = docHeight;
    canvas.style.width = docWidth + 'px';
    canvas.style.height = docHeight + 'px';

    redrawAllStrokes();
  }

  window.addEventListener('resize', resizeCanvas);
  setTimeout(resizeCanvas, 400);
  setTimeout(resizeCanvas, 1200);
  resizeCanvas();

  function ensureCanvasSize() {
    const docWidth = document.documentElement.clientWidth;
    const docHeight = Math.max(
      document.body.scrollHeight,
      document.documentElement.scrollHeight,
      document.body.offsetHeight,
      document.documentElement.offsetHeight,
      window.innerHeight
    );
    if (canvas.width !== docWidth || canvas.height < docHeight) {
      resizeCanvas();
    }
  }

  // Tool Switching
  function setTool(tool) {
    activeTool = tool;
    [btnCursor, btnPen, btnLaser, btnEraser].forEach(b => {
      b?.classList.remove('active', 'laser-active');
    });

    canvas.className = 'annotation-canvas';
    if (laserDot) laserDot.style.display = 'none';
    if (eraserCircle) eraserCircle.style.display = 'none';

    if (tool === 'cursor') {
      btnCursor?.classList.add('active');
    } else if (tool === 'pen') {
      btnPen?.classList.add('active');
      canvas.classList.add('active-draw');
    } else if (tool === 'laser') {
      btnLaser?.classList.add('laser-active');
      canvas.classList.add('active-laser');
      if (laserDot) laserDot.style.display = 'block';
    } else if (tool === 'eraser') {
      btnEraser?.classList.add('active');
      canvas.classList.add('active-eraser');
      if (eraserCircle) {
        eraserCircle.style.display = 'block';
        updateEraserVisualSize();
      }
    }
  }

  btnCursor?.addEventListener('click', () => setTool('cursor'));
  btnPen?.addEventListener('click', () => setTool('pen'));
  btnLaser?.addEventListener('click', () => setTool('laser'));
  btnEraser?.addEventListener('click', () => setTool('eraser'));

  // Color selection
  colorDots.forEach(dot => {
    dot.addEventListener('click', () => {
      colorDots.forEach(d => d.classList.remove('selected'));
      dot.classList.add('selected');
      currentColor = dot.getAttribute('data-color');
      if (activeTool !== 'pen') {
        setTool('pen');
      }
    });
  });

  // Size selection (adapts dynamically to Pen or Eraser)
  sizeBtns.forEach(btn => {
    btn.addEventListener('click', () => {
      sizeBtns.forEach(b => b.classList.remove('selected'));
      btn.classList.add('selected');
      const sizeVal = parseFloat(btn.getAttribute('data-size')) || 4;

      if (activeTool === 'eraser') {
        if (sizeVal <= 2) eraserWidth = 24;
        else if (sizeVal <= 4) eraserWidth = 44;
        else eraserWidth = 72;
        updateEraserVisualSize();
      } else {
        penWidth = sizeVal;
        if (activeTool !== 'pen') {
          setTool('pen');
        }
      }
    });
  });

  // Undo Last Stroke (Ctrl+Z or Undo button)
  function undoLastStroke() {
    if (strokeHistory.length > 0) {
      strokeHistory.pop();
      redrawAllStrokes();
    }
  }
  btnUndo?.addEventListener('click', undoLastStroke);

  // Clear Canvas with confirmation
  btnClear?.addEventListener('click', () => {
    if (strokeHistory.length === 0) return;
    if (confirm('Bạn có muốn xóa toàn bộ nét vẽ và ghi chú trên trang không?')) {
      strokeHistory = [];
      redrawAllStrokes();
    }
  });

  // Toggle Toolbar collapse
  btnToggleToolbar?.addEventListener('click', () => {
    toolbar?.classList.toggle('minimized');
    const isMin = toolbar?.classList.contains('minimized');
    if (toggleIcon) {
      toggleIcon.className = isMin ? 'fas fa-chevron-left' : 'fas fa-chevron-right';
    }
  });

  // Mathematically accurate coordinate mapping from viewport to canvas buffer
  function getPos(e) {
    let clientX, clientY;
    if (e.touches && e.touches.length > 0) {
      clientX = e.touches[0].clientX;
      clientY = e.touches[0].clientY;
    } else if (e.changedTouches && e.changedTouches.length > 0) {
      clientX = e.changedTouches[0].clientX;
      clientY = e.changedTouches[0].clientY;
    } else {
      clientX = e.clientX;
      clientY = e.clientY;
    }

    const rect = canvas.getBoundingClientRect();
    const scaleX = rect.width > 0 ? (canvas.width / rect.width) : 1;
    const scaleY = rect.height > 0 ? (canvas.height / rect.height) : 1;

    return {
      x: (clientX - rect.left) * scaleX,
      y: (clientY - rect.top) * scaleY
    };
  }

  // Synchronous cursor tracking with zero lag
  function updateCursors(e) {
    const clientX = e.clientX !== undefined ? e.clientX : (e.touches && e.touches[0] ? e.touches[0].clientX : -100);
    const clientY = e.clientY !== undefined ? e.clientY : (e.touches && e.touches[0] ? e.touches[0].clientY : -100);

    if (activeTool === 'laser' && laserDot) {
      laserDot.style.left = clientX + 'px';
      laserDot.style.top = clientY + 'px';
    } else if (activeTool === 'eraser' && eraserCircle) {
      eraserCircle.style.left = clientX + 'px';
      eraserCircle.style.top = clientY + 'px';
    }
  }

  // START DRAWING / ERASING
  function startDraw(e) {
    if (activeTool !== 'pen' && activeTool !== 'eraser') return;
    ensureCanvasSize();
    isDrawing = true;
    const pos = getPos(e);
    currentPoints = [pos];

    if (activeTool === 'pen') {
      ctx.globalCompositeOperation = 'source-over';
      ctx.strokeStyle = currentColor;
      ctx.fillStyle = currentColor;
      ctx.lineWidth = penWidth;
      ctx.lineCap = 'round';
      ctx.lineJoin = 'round';

      // Draw initial round dot (enables single click tap dots)
      ctx.beginPath();
      ctx.arc(pos.x, pos.y, penWidth / 2, 0, Math.PI * 2);
      ctx.fill();
    } else if (activeTool === 'eraser') {
      ctx.globalCompositeOperation = 'destination-out';
      ctx.strokeStyle = 'rgba(0, 0, 0, 1)';
      ctx.fillStyle = 'rgba(0, 0, 0, 1)';
      ctx.lineWidth = eraserWidth;
      ctx.lineCap = 'round';
      ctx.lineJoin = 'round';

      // Immediate circle erase on click
      ctx.beginPath();
      ctx.arc(pos.x, pos.y, eraserWidth / 2, 0, Math.PI * 2);
      ctx.fill();
    }
  }

  // MOVE DRAWING / ERASING (ULTRA-SMOOTH CONTINUOUS INTERPOLATION)
  function drawMove(e) {
    updateCursors(e);

    if (!isDrawing) return;
    if (activeTool !== 'pen' && activeTool !== 'eraser') return;

    const pos = getPos(e);

    if (activeTool === 'eraser') {
      ctx.globalCompositeOperation = 'destination-out';
      ctx.strokeStyle = 'rgba(0, 0, 0, 1)';
      ctx.fillStyle = 'rgba(0, 0, 0, 1)';
      ctx.lineWidth = eraserWidth;
      ctx.lineCap = 'round';
      ctx.lineJoin = 'round';

      const lastPos = currentPoints[currentPoints.length - 1];
      ctx.beginPath();
      ctx.moveTo(lastPos.x, lastPos.y);
      ctx.lineTo(pos.x, pos.y);
      ctx.stroke();

      ctx.beginPath();
      ctx.arc(pos.x, pos.y, eraserWidth / 2, 0, Math.PI * 2);
      ctx.fill();

      currentPoints.push(pos);
      return;
    }

    // PEN: Incremental smooth quadratic Bézier curves through midpoints
    currentPoints.push(pos);

    ctx.globalCompositeOperation = 'source-over';
    ctx.strokeStyle = currentColor;
    ctx.lineWidth = penWidth;
    ctx.lineCap = 'round';
    ctx.lineJoin = 'round';

    if (currentPoints.length === 2) {
      // Connect first point to midpoint(p0, p1)
      const p0 = currentPoints[0];
      const p1 = currentPoints[1];
      const mid = midPoint(p0, p1);
      ctx.beginPath();
      ctx.moveTo(p0.x, p0.y);
      ctx.lineTo(mid.x, mid.y);
      ctx.stroke();
    } else if (currentPoints.length > 2) {
      const p0 = currentPoints[currentPoints.length - 3];
      const p1 = currentPoints[currentPoints.length - 2];
      const p2 = currentPoints[currentPoints.length - 1];

      const mid1 = midPoint(p0, p1);
      const mid2 = midPoint(p1, p2);

      ctx.beginPath();
      ctx.moveTo(mid1.x, mid1.y);
      ctx.quadraticCurveTo(p1.x, p1.y, mid2.x, mid2.y);
      ctx.stroke();
    }
  }

  // STOP DRAWING
  function stopDraw() {
    if (!isDrawing) return;
    isDrawing = false;

    if (activeTool === 'pen' && currentPoints.length >= 2) {
      const pPrev = currentPoints[currentPoints.length - 2];
      const pLast = currentPoints[currentPoints.length - 1];
      const lastMid = midPoint(pPrev, pLast);

      ctx.globalCompositeOperation = 'source-over';
      ctx.strokeStyle = currentColor;
      ctx.lineWidth = penWidth;
      ctx.lineCap = 'round';
      ctx.lineJoin = 'round';

      ctx.beginPath();
      ctx.moveTo(lastMid.x, lastMid.y);
      ctx.lineTo(pLast.x, pLast.y);
      ctx.stroke();
    }

    if (currentPoints.length > 0) {
      strokeHistory.push({
        tool: activeTool,
        color: currentColor,
        width: activeTool === 'eraser' ? eraserWidth : penWidth,
        points: currentPoints
      });
    }
    currentPoints = [];
  }

  // Mouse event listeners
  canvas.addEventListener('mousedown', startDraw);
  canvas.addEventListener('mousemove', drawMove);
  window.addEventListener('mouseup', stopDraw);

  // Touch event listeners for tablet / mobile devices
  canvas.addEventListener('touchstart', (e) => {
    if (activeTool === 'pen' || activeTool === 'eraser') {
      e.preventDefault();
      startDraw(e);
    }
  }, { passive: false });

  canvas.addEventListener('touchmove', (e) => {
    if (activeTool === 'pen' || activeTool === 'eraser') {
      e.preventDefault();
      drawMove(e);
    }
  }, { passive: false });

  window.addEventListener('touchend', stopDraw);

  // Global mouse & touch tracking for laser and eraser circular cursor
  document.addEventListener('mousemove', updateCursors);
  document.addEventListener('touchmove', updateCursors, { passive: true });

  // Convenient Keyboard Shortcuts
  document.addEventListener('keydown', (e) => {
    if (['INPUT', 'TEXTAREA', 'SELECT'].includes(document.activeElement?.tagName)) return;

    if ((e.ctrlKey || e.metaKey) && e.key.toLowerCase() === 'z') {
      e.preventDefault();
      undoLastStroke();
    } else if (e.key.toLowerCase() === 'p' || e.key.toLowerCase() === 'b') {
      setTool('pen');
    } else if (e.key.toLowerCase() === 'e') {
      setTool('eraser');
    } else if (e.key.toLowerCase() === 'l') {
      setTool('laser');
    } else if (e.key === 'Escape' || e.key.toLowerCase() === 'v') {
      setTool('cursor');
    }
  });
}



