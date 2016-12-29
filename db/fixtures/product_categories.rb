ProductCategory.seed(:id,
  { id: 1, position: 1, name: "瓷砖" },
  { id: 2, parent_id: 1, position: 1, name: "墙地砖" },
  { id: 3, parent_id: 1, position: 2, name: "内墙砖" },
  { id: 4, parent_id: 1, position: 3, name: "外墙砖" },
  { id: 5, parent_id: 1, position: 4, name: "厚砖" },
  { id: 6, parent_id: 1, position: 5, name: "陶瓷薄板" },
  { id: 7, parent_id: 1, position: 6, name: "小型砖" },
  { id: 8, parent_id: 1, position: 7, name: "陶瓷配件" },

  { id: 9,  parent_id: 2, position: 1, name: "抛光砖" },
  { id: 10, parent_id: 2, position: 2, name: "全抛釉" },
  { id: 11, parent_id: 2, position: 3, name: "仿古砖" },
  { id: 12, parent_id: 2, position: 4, name: "大理石" },
  { id: 13, parent_id: 2, position: 5, name: "微晶石" },
  { id: 14, parent_id: 2, position: 6, name: "抛晶砖" },
  { id: 15, parent_id: 2, position: 7, name: "进口砖" },

  { id: 16, parent_id: 9, position: 1, name: "瓷抛砖" },
  { id: 17, parent_id: 9, position: 2, name: "3D抛光砖" },
  { id: 18, parent_id: 9, position: 3, name: "渗花砖" },

  { id: 19, parent_id: 10, position: 1, name: "金刚石" },
  { id: 20, parent_id: 10, position: 2, name: "全抛釉(新石纪)" },

  { id: 21, parent_id: 11, position: 1, name: "仿木" },
  { id: 22, parent_id: 11, position: 2, name: "仿古" },
  { id: 23, parent_id: 11, position: 3, name: "仿石" },
  { id: 24, parent_id: 11, position: 4, name: "仿金属" },

  { id: 25, parent_id: 12, position: 1, name: "通体大理石" },
  { id: 26, parent_id: 12, position: 2, name: "全抛大理石" },
  { id: 27, parent_id: 12, position: 3, name: "柔光大理石" },

  { id: 28, parent_id: 3, position: 1, name: "瓷片" },
  { id: 29, parent_id: 3, position: 2, name: "抛光砖瓷片" },

  { id: 30, parent_id: 4, position: 1, name: "通体外墙砖" },
  { id: 31, parent_id: 4, position: 2, name: "釉面外墙砖" },

  { id: 32, parent_id: 6, position: 1, name: "有光面" },
  { id: 33, parent_id: 6, position: 2, name: "哑光面" },

  { id: 34, parent_id: 8, position: 1, name: "拼花" },
  { id: 35, parent_id: 8, position: 2, name: "地花" },
  { id: 36, parent_id: 8, position: 3, name: "梯级砖" },
  { id: 37, parent_id: 8, position: 4, name: "波打线" },
  { id: 38, parent_id: 8, position: 5, name: "花砖" },
  { id: 39, parent_id: 8, position: 6, name: "瓦筒" },
  { id: 40, parent_id: 8, position: 7, name: "腰线" },
  { id: 41, parent_id: 12, position: 4, name: "剥开釉大理石" },

  { id: 101, position: 1, name: "马赛克" },
  { id: 102, parent_id: 101, position: 1, name: "马赛克" },
  { id: 103, parent_id: 101, position: 2, name: "装饰线" },
  { id: 104, parent_id: 101, position: 3, name: "拼图" },
  { id: 105, parent_id: 101, position: 4, name: "泳池砖" },
  { id: 106, parent_id: 101, position: 5, name: "文化石" }

)

