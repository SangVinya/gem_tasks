require "tasks/version"

module Tasks
  G = 9.81

  class << self
    include Math

    def deg_to_rad
      360/(2 * PI)
    end

    def math1(x, y)
      { sum:  x + y,
        diff: x - y,
        comp: x * y }
    end

    def math2(x, y)
      s = ((x.abs - y.abs) / (1 + (x * y).abs)).round(4)
      { result: s }
    end

    def math3(x)
      { cube_volume: x**3,
        side_surface: 4 * x**2 }
    end

    def math4(x, y)
      aver = (x + y) / 2.0
      geo_mean = (sqrt(x * y)).round(3)
      { average: aver,
        geometric_mean: geo_mean }
    end

    def math5(x, y)
      aver = (x + y) / 2.0
      geo_mean = (sqrt(x.abs * y.abs)).round(3)
      { average: aver,
        geometric_mean: geo_mean }
    end

    def math6(x, y)
      hyp = (sqrt(x**2 + y**2)).round(2)
      a = 0.5 * x * y
      { hypotenuse: hyp,
        area: a }
    end

    def math7(vol1, temp1, vol2, temp2)
      vol = (vol1 + vol2).to_f
      temp = ((vol1 * temp1 + vol2 * temp2) / vol).round(2)
      { volume: vol,
        temperature: temp }
    end

    def math8(n, r)
      rad_num = 180 / n / deg_to_rad
      a = (r * 2 * tan(rad_num))
      { perimeter: (a * n).round(2) }
    end

    def math9(r1, r2, r3)
      resist = (1/(1.0 / r1 + 1.0 / r2 + 1.0 / r3)).round(2)
      { resistance: resist }
    end

    def math10(h)
      t = (sqrt(2 * h / G)).round(3)
      { time: t }
    end

    def math12(x)
      a = (sqrt(3) * x**2 / 4).round(3)
      { area: a }
    end

    def math13(l)
      t = (2 * PI * sqrt(l / G)).round(3)
      { period: t }
    end

    def math14(m1, m2, r)
      g = 6.7385 * 10**-11
      grav = (g * m1 * m2) / r**2
      { gravity: grav }
    end

    def math15(x, y)
      cath = (sqrt(y**2 - x**2)).round(3)
      p = (x + y + cath) / 2
      rad = (sqrt((p - x) * (p - y) * (p - cath) / p)).round(3)
      { cathetus: cath,
        radius: rad }
    end

    def math16(x)
      a = (x**2 / (4 * PI)).round(3)
      { area: a }
    end

    def math17(r1, r2)
      a = (PI * (r2**2 - r1**2)).round(3)
      { area: a }
    end

    def math18(a, b, r)
      c = 180 - a - b
      side = [a, b, c].map { |i| (2 * r * sin(i / deg_to_rad)).round(3) }
      { sides: side }
    end

    def math19(v1, v2, a1, a2, s)
      t = ((-(v1 + v2) + sqrt((v1 + v2) * (v1 + v2) + 2 * (a1 + a2) * s)) / (a1 + a2)).round(3)
      { time: t }
    end

    def math22(a, b, alpha)
      rad_num = alpha / deg_to_rad
      a = (a * b / sin(rad_num)).round(3)
      { area: a }
    end

    def math24(x1, y1, x2, y2)
      dist = sqrt((x2 - x1)**2 + (y2 - y1)**2)
      { distance: dist }
    end

    def math25(x1, y1, x2, y2, x3, y3)
      ab = (sqrt((x2 - x1)**2 + (y2 - y1)**2)).round(3)
      bc = (sqrt((x3 - x2)**2 + (y3 - y2)**2)).round(3)
      ac = (sqrt((x3 - x1)**2 + (y3 - y1)**2)).round(3)
      per = (ab + bc + ac).round(3)
      p = per / 2
      s = (sqrt(p * (p - ab) * (p - bc) * (p - ac))).round(1)
      { side_a: ab,
        side_b: bc,
        side_c: ac,
        perimeter: per,
        area: s }
    end

    def math27(a, b, c)
      ang_a = (acos((b**2 + c**2 - a**2) / (2.0 * b * c)) * deg_to_rad).round(3)
      ang_b = (acos((a**2 + c**2 - b**2) / (2.0 * a * c)) * deg_to_rad).round(3)
      ang_c = (180 - ang_a - ang_b).round(3)
      { angle_a: ang_a,
        angle_b: ang_b,
        angle_c: ang_c }
    end

    def math28(x)
      book = 2 * x**4 - 3 * x**3 + 4 * x**2 - 5 * x + 6
      my = x * (x * (x * (2 * x - 3) + 4) - 5) + 6
      book == my ? [true, my] : false
      { book_result: book,
        my_result: my }
    end

    def math29(x, y)
      book = 3 * x**2 * y**2 - 2 * x * y**2 - 7 * x**2 * y - 4 * y**2 + 15 * x * y + 2 * x**2 - 3 * x + 10 * y + 6
      my = x * (y * (y * (3 * x - 2) - 7 * x + 15) + 2 * x - 3) - y * (4 * y - 10) + 6
      book == my ? true : false
      { book_result: book,
        my_result: my }
    end

    def math33(x, y)
      if x > y
        max = x
        min = y
      else
        min = x
        max = y
      end
      { maximum: max,
        minimum: min }
    end

    def math34(x, y, z)
      if x > y
        max = x
        min = y
      else
        max = y
        min = x
      end
      if z > max
        max = z
      else
        min = z
      end
      { maximum: max,
        minimum: min }
    end

    def math36(a, b, c)
      answ = a < b && b < c ? true : false
      { result: answ }
    end

    def math37(a, b, c)
      if a >= b && b >= c
        res = [a, b, c].map { |i| i * 2 }
      else
        res = [a, b, c].map { |j| j.abs }
      end
      { result: res }
    end

    def math38(x, y)
      { z: x > y ? x - y : y - x + 1 }
    end

    def math39(x, y)
      res = x > y ? x : [x, y]
      { result: res }
    end

    def math40(x, y)
      x = 0 if x <= y
      { x: x, y: y }
    end

    def math41(x, y, z)
      res = [x, y, z].select { |i| i if (1...3).include?(i) }
      { result: res }
    end

    def math42(x, y)
      min = (x + y) / 2.0
      max = 2 * x * y
      if x == y
        return puts "Error! x != y"
      elsif x > y
        y = min
        x = max
      else
        x = min
        y = max
      end
      { x: x, y: y }
    end

    def math43(x, y, z)
      res = [x, y, z].map { |n| n >= 0 ? n**2 : n }
      { result: res }
    end

    def math45(a, b, c, d)
      num = [a, b, c, d]
      if a <= b && a <= b && b <= c && c <= d
        num.map! { |i| i = d }
      elsif a > b && a > b && b > c && c > d
        num.map! { |i| i }
      else
        num.map! { |i| i**2 }
      end
      { result: num }
    end

    def math46(x, y)
      if x < 0 && y < 0
        x = x.abs
        y = y.abs
      elsif x < 0 || y < 0
        x += 0.5
        y += 0.5
      elsif (0 < x && (x < 0.5 || x > 2)) && (0 < y && (y < 0.5 || y > 2))
        x /= 10.0
        y /= 10.0
      else
        x
        y
      end
      { x: x, y: y }
    end

    def math61(x)
      a = x.floor
      b = x.round
      c = x.truncate
      { a: a, b: b, c: c }
    end

    def math62(x)
      { result: x.even? }
    end

    def math64(n)
        return puts "Error! n > 99" if n <= 99
        { result: n / 100 }
    end

    def math65(n)
        return puts "Error! 0 < n <= 99" if n > 99 || n <= 0
        a = n / 10
        b = n % 10
        res = n**2 == (a + b)**3 ? true : false
        { result: res }
    end

    def math66(k, m, x, y, z)
      if k < m**2
        x = x.abs
        y -= 0.5
        z -= 0.5
      elsif k == m**2
        y = y.abs
        x -= 0.5
        z -= 0.5
      else
        z = z.abs
        x -= 0.5
        y -= 0.5
      end
      { k: k, m: m, x: x, y: y, z: z }
    end

    def math141(h)
      v = 1
      arr = []
      (h..5).step(0.5) do
        arr << (sqrt(v / PI / h)).round(3)
        h += 0.5
      end
      { radius: arr }
    end

    def math142(x)
      arr = []
      (x..5).each { |x| arr << (x**5 - 9 * x**4 + 1.7 * x**2 - 9.6).round(1) }
      { result: arr }
    end

    def math148(t)
      arr = []
      (t..100).each { |t| arr << (1.8 * t + 32).round(1) }
      { temp0: arr[0],
        temp5: arr[5],
        temp10: arr[10],
        temp20: arr[20],
        temp35: arr[35],
        temp50: arr[50],
        temp75: arr[75],
        temp90: arr[90],
        temp100: arr[100] }
    end

    def math149(x)
      arr = []
      (x..1).step(0.1) do
        arr << (4 * x**3 - 2 * x**2 + 5).round(3)
        x += 0.1
      end
      { y0: arr[0],
        y5: arr[5],
        y12: arr[12],
        y21: arr[21],
        y30: arr[30],
        y34: arr[34],
        y40: arr[40] }
    end

    def math163(a)
      arr = []
      (a..27).each { |a| arr << (a > 0 ? a - 0.5 : a) }
      { a0: -10,
        a4: -6,
        a9: -1,
        a12: 1.5,
        a17: 6.5,
        a21: 10.5,
        a27: 16.5,
        a31: 20.5,
        a37: 26.5 }
    end

    def math207(n)
      num = n.to_s.split("")
      num.delete_if { |i| i == "5" || i == "0" }
      { result: num.join.to_i }
    end

    def math224(n)
      arr = []
      (1..n).each { |i| arr << i if n % i == 0 }
      { result: arr }
    end

    def math225(n)
      arr = []
      (1..n).each { |q| arr << q if n % q**2 == 0 && n % q**3 != 0 }
      { result: arr }
    end

    def math226(m, n)
      arr = []
      (1...m * n).each { |x| arr << x if x % m == 0 && x % n == 0 }
      { result: arr }
    end
  end
end
