# coding: utf-8
class Triangle

  def self.guess(a, b, c)
    a, b, c = *[a, b, c].sort
    if a + b <= c
      "三角形じゃないです＞＜"
    elsif a == b && b == c
      "正三角形ですね！"
    elsif a == b || b == c
      "二等辺三角形ですね！"
    elsif a ** 2 + b ** 2 == c ** 2
      "直角三角形ですね！"
    else
      "不等辺三角形ですね！"
    end
  end

end

if __FILE__ == $0
  puts Triangle.guess(*ARGV.map(&:to_i))
end
