# coding: utf-8
require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do
  specify { expect(Triangle.guess(2, 3, 4)).to eq "不等辺三角形ですね！" }
  specify { expect(Triangle.guess(2, 2, 1)).to eq "二等辺三角形ですね！" }
  specify { expect(Triangle.guess(1, 1, 1)).to eq "正三角形ですね！" }
  specify { expect(Triangle.guess(1, 2, 3)).to eq "三角形じゃないです＞＜" }

  # 追加テストケース
  specify("順序は問わない") { expect(Triangle.guess(2, 1, 2)).to eq "二等辺三角形ですね！" }
  specify("直角三角形") do
    expect(Triangle.guess(3, 4, 5)).to eq "直角三角形ですね！"
    expect(Triangle.guess(3, 5, 4)).to eq "直角三角形ですね！"
  end
  # 辺の長さは整数なので直角二等辺三角形は判定不要

  specify("長さが0") { expect(Triangle.guess(0, 3, 4)).to eq "三角形じゃないです＞＜" }
  specify("負の数") { expect(Triangle.guess(-1, 3, 4)).to eq "三角形じゃないです＞＜" }
end
