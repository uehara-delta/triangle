# coding: utf-8
class Triangle

  def self.guess(a, b, c)
    if a + b <= c
      "三角形じゃないです＞＜"
    elsif a == b && b == c
      "正三角形ですね！"
    elsif a == b
      "二等辺三角形ですね！"
    else
      "不等辺三角形ですね！"
    end
  end

end
