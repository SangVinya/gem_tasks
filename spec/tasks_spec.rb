RSpec.describe Tasks do
  it "test1" do
    expect({ sum: 9, diff: 3, comp: 18 }).to eq(Tasks.math1(6, 3))
  end

  it "test2" do
    expect({ result: 0.3077 }).to eq(Tasks.math2(-6.0, -2))
  end

  it "test3" do
    expect({ cube_volume: 27, side_surface: 36 }).to eq(Tasks.math3(3))
  end

  it "test4" do
    expect({ average: 7, geometric_mean: 6.708 }).to eq(Tasks.math4(5, 9))
  end

  it "test5" do
    expect({ average: 0.5, geometric_mean: 3.464 }).to eq(Tasks.math5(4, -3))
  end

  it "test6" do
    expect({ hypotenuse: 7.81, area: 15 }).to eq(Tasks.math6(5, 6))
  end

  it "test7" do
    expect({ volume: 300, temperature: 46.67 }).to eq(Tasks.math7(100, 60, 200, 40))
  end

  it "test8" do
    expect({ perimeter: 32.32 }).to eq(Tasks.math8(8, 5))
  end

  it "test9" do
    expect({ resistance: 1.33 }).to eq(Tasks.math9(3, 4, 6))
  end

  it "test10" do
    expect({ time: 2.019 }).to eq(Tasks.math10(20))
  end

  # -------------------------------------------------------
  it "test11" do
    expect({ area: 10.825 }).to eq(Tasks.math12(5))
  end

  it "test12" do
    expect({ period: 5.674 }).to eq(Tasks.math13(8))
  end

  it "test13" do
    expect({ gravity: 7.66504375e-08 }).to eq(Tasks.math14(65, 70, 2))
  end

  it "test14" do
    expect({ cathetus: 6.245, radius: 1.622 }).to eq(Tasks.math15(5, 8))
  end

  it "test15" do
    expect({ area: 17.905 }).to eq(Tasks.math16(15))
  end

  it "test16" do
    expect({ area: 263.894 }).to eq(Tasks.math17(20, 22))
  end

  it "test17" do
    expect({ sides: [12.257,  15.939, 11.314] }).to eq(Tasks.math18(50, 85, 8))
  end

  it "test18" do
    expect({ time: 3.058 }).to eq(Tasks.math19(50, 60, 15, 20, 500))
  end

  it "test19" do
    expect({ area: 466.717 }).to eq(Tasks.math22(20, 15, 40))
  end

  it "test20" do
    expect({ distance: 5.0 }).to eq(Tasks.math24(5, 6, 9, 9))
  end

  # -------------------------------------------------------
  it "test21" do
    expect({ side_a: 4.243, side_b: 4.472, side_c: 7.071, perimeter: 15.786, area: 9 }).to eq(Tasks.math25(2, 3, 5, 6, 9, 4))
  end

  it "test22" do
    expect({ angle_a: 40.804, angle_b: 78.585, angle_c: 60.611 }).to eq(Tasks.math27(6, 9, 8))
  end

  it "test23" do
    expect({ book_result: 370, my_result: 370 }).to eq(Tasks.math28(4))
  end

  it "test24" do
    expect({ book_result: 579, my_result: 579 }).to eq(Tasks.math29(3, 6))
  end

  it "test25" do
    expect({ maximum: 5, minimum: 2 }).to eq(Tasks.math33(2, 5))
  end

  it "test26" do
    expect({ maximum: 9, minimum: 2 }).to eq(Tasks.math34(6, 2, 9))
  end

  it "test27" do
    expect({ result: false }).to eq(Tasks.math36(4, 3, 7))
  end

  it "test28" do
    expect({ result: [3, 2, 4] }).to eq(Tasks.math37(3, -2, 4))
  end

  it "test29" do
    expect({ z: 2 }).to eq(Tasks.math38(4, 5))
  end

  it "test30" do
    expect({ result: 7 }).to eq(Tasks.math39(7, 5))
  end

  # -------------------------------------------------------
  it "test31" do
    expect({ x: 0, y: 5 }).to eq(Tasks.math40(2, 5))
  end

  it "test32" do
    expect({ result: [2, 2.5] }).to eq(Tasks.math41(-2, 2, 2.5))
  end

  it "test33" do
    expect({ x: 10.5, y: 196 }).to eq(Tasks.math42(7, 14))
  end

  it "test34" do
    expect({ result: [25, -2, 0] }).to eq(Tasks.math43(5, -2, 0))
  end

  it "test35" do
    expect({ result: [4, 4, 4, 4] }).to eq(Tasks.math45(1, 2, 3, 4))
  end

  it "test36" do
    expect({ x: 0.3, y: 0.4 }).to eq(Tasks.math46(3, 4))
  end

  it "test37" do
    expect({ a: 3, b: 4, c: 3 }).to eq(Tasks.math61(3.6))
  end

  it "test38" do
    expect({ result: true }).to eq(Tasks.math62(6))
  end

  it "test39" do
    expect({ result: 5 }).to eq(Tasks.math64(564))
  end

  it "test40" do
    expect({ result: false }).to eq(Tasks.math65(57))
  end

  # -------------------------------------------------------
  it "test41" do
    expect({ k: 15, m: 1, x: -13.5, y: -9.5, z: 8 }).to eq(Tasks.math66(15, 1, -13, -9, -8))
  end

  it "test42" do
    expect({ radius: [0.798, 0.564, 0.461, 0.399, 0.357, 0.326, 0.302, 0.282, 0.266, 0.252] }).to eq(Tasks.math141(0.5))
  end

  it "test43" do
    expect({ result: [-9.6, -15.9, -114.8, -480.3, -1262.4, -2467.1] }).to eq(Tasks.math142(0))
  end

  it "test44" do
    expect({ temp0: 32, temp5: 41, temp10: 50, temp20: 68, temp35: 95, temp50: 122, temp75: 167, temp90: 194, temp100: 212 }).to eq(Tasks.math148(0))
  end

  it "test45" do
    expect({ y0: -121, y5: -70, y12: -24.808, y21: 0.464, y30: 5, y34: 4.936, y40: 7 }).to eq(Tasks.math149(-3))
  end

  it "test46" do
    expect({ a0: -10, a4: -6, a9: -1, a12: 1.5, a17: 6.5, a21: 10.5, a27: 16.5, a31: 20.5, a37: 26.5 }).to eq(Tasks.math163(-10))
  end

  it "test47" do
    expect({ result: 919 }).to eq(Tasks.math207(59015509))
  end

  it "test48" do
    expect({ result: [1, 2, 4, 8, 11, 22, 44, 88] }).to eq(Tasks.math224(88))
  end

  it "test49" do
    expect({ result: [8, 16] }).to eq(Tasks.math225(256))
  end

  it "test50" do
    expect({ result: [24, 48, 72] }).to eq(Tasks.math226(8, 12))
  end
end
