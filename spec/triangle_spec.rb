# coding: utf-8
require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do
  specify { expect(Triangle.guess(2, 3, 4)).to eq "不等辺三角形ですね！" }
  specify { expect(Triangle.guess(2, 2, 1)).to eq "二等辺三角形ですね！" }
  specify { expect(Triangle.guess(1, 1, 1)).to eq "正三角形ですね！" }
  specify { expect(Triangle.guess(1, 2, 3)).to eq "三角形じゃないです＞＜" }
end
