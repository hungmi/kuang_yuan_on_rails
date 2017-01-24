10.times do
	Stone.create!({
		zh_name: "蝴蝶石#{rand(1..99)} Butterfly",
		origin: "台灣台中",
		feature: "耐操好用",
		good_place: "會議室",
		description: "jowjfowijfoiwjfowi
		jfowjeofjweofijwf",
	})
end

10.times do
	Stone.find(rand(1..10)).examples.create!({
		zh_name: "案例#{rand(1..99)}號",
		date_and_time: "完成日期或是製作時間長短",
		place: "fjwoifjwoffoiwwfef",
		designer: "設計者/公司或建設公司",
		description: "這裡是專案描述。Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error."
	})
end