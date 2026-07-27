// ==========================================
// CẨM NANG SỬ DỤNG VIETPHYS - SELF-COMPILING
// Tên file: vietphys-package/examples/manual_mcq.typ
// ==========================================
#import "../vietphys.typ": *
// Import thư viện tạo Dropcap từ kho package của Typst
#import "@preview/droplet:0.3.1": dropcap
#import "@preview/fontawesome:0.6.2": *
#vp-show-sol.update(true)

#vp-question(
  [Một vật chuyển động thẳng với gia tốc $a$ và vận tốc đầu $v_0$. Hãy tính quãng đường vật đi được trong $n$ giây và trong giây thứ $n$ ($n <$ thời gian chuyển động nếu chậm dần đều).],
  type: "essay",
  level: "VD",
  lines: 5,
  sol: [
    \nGiải chi tiết:\n1. Quãng đường đi được trong $n$ giây:\nPhương trình quãng đường của chuyển động thẳng biến đổi đều là $s = v_0 t + 1/2 a t^2$. Thay $t = n$ vào, ta có:\n$s_n = v_0 n + 1/2 a n^2 = (v_0 + 1/2 a n)n$. \n2. Quãng đường đi được trong giây thứ $n$:\nQuãng đường đi được trong giây thứ $n$ là hiệu số giữa quãng đường đi được trong $n$ giây và quãng đường đi được trong $(n-1)$ giây.\n$Delta s_n = s_n - s_(n-1)$ \n$s_(n-1) = v_0 (n-1) + 1/2 a (n-1)^2$ \n$Delta s_n = (v_0 n + 1/2 a n^2) - (v_0 (n-1) + 1/2 a (n-1)^2)$ \n$Delta s_n = v_0 n + 1/2 a n^2 - v_0 n + v_0 - 1/2 a (n^2 - 2n + 1)$ \n$Delta s_n = v_0 + 1/2 a n^2 - 1/2 a n^2 + a n - 1/2 a$ \n$Delta s_n = v_0 + a n - 1/2 a = v_0 + a(n - 1/2) = v_0 + a(2n - 1)/2$.
  ]
)

#vp-question(
  [Một vật chuyển động thẳng với gia tốc $a$ và vận tốc đầu $v_0$. Hãy tính quãng đường vật đi được trong $n$ giây và trong giây thứ $n$ ($n <$ thời gian chuyển động nếu chậm dần đều).],
  type: "essay",
  level: "VD",
  lines: 5,
  sol: [
    *Giải chi tiết:*

    *1. Quãng đường đi được trong $n$ giây:* \
    Phương trình quãng đường của chuyển động thẳng biến đổi đều là $s = v_0 t + 1/2 a t^2$. Thay $t = n$ vào, ta có:
    $ s_n = v_0 n + 1/2 a n^2 = (v_0 + 1/2 a n)n $

    *2. Quãng đường đi được trong giây thứ $n$:* \
    Quãng đường đi được trong giây thứ $n$ là hiệu số giữa quãng đường đi được trong $n$ giây và quãng đường đi được trong $(n-1)$ giây:
    $ Delta s_n &= s_n - s_(n-1) \
    &= (v_0 n + 1/2 a n^2) - (v_0 (n-1) + 1/2 a (n-1)^2) \
    &= v_0 n + 1/2 a n^2 - v_0 n + v_0 - 1/2 a (n^2 - 2n + 1) \
    &= v_0 + 1/2 a n^2 - 1/2 a n^2 + a n - 1/2 a \
    &= v_0 + a n - 1/2 a \
    &= v_0 + a(n - 1/2) = v_0 + a(2n - 1)/2 $
  ]
)

#vp-question(
  [Trên mặt phẳng nghiêng góc $alpha$ có một dây không đàn hồi. Một đầu dây gắn vào tường ở $A$, đầu kia buộc vào một vật $B$ có khối lượng $m$. Mặt phẳng nghiêng chuyển động sang phải với gia tốc $vec(a)$ nằm ngang không đổi. \ Hãy xác định gia tốc của vật $B$ khi nó còn ở trên mặt phẳng nghiêng.],
  type: "essay",
  level: "VDC",
  image: image("img/4_1.png"),
  image-side: "right",
  image-ratio: 0.4,
  sol: [
    aaaaaaa
  ]
)