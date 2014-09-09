def rec_intersection(rect1, rect2)
  left_edge = [rect1[0][0], rect2[0][0]].max 
  top_edge = [rect1[1][1], rect2[1][1]].min 
  bottom_edge = [rect1[0][1], rect2[0][1]].max 
  right_edge = [rect1[1][0], rect2[1][0]].min
  return nil if rect1[1][0] < rect2[0][0] && rect1[1][1] < rect2[0][1]
  return [[left_edge, bottom_edge], [right_edge, top_edge]]
end