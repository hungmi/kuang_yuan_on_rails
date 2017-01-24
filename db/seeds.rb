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
		name: "fjwoifjwoffoiwj",
		place: "fjwoifjwoffoiwwfef",
		designer: "fjwoifjwoffoiwjfow",
		description: "fjwoifjwoffoiwjfowfowms
		lkmoisjvoiojwofijwofwfiwjfowijfowe
		ijfoweijfowpfwpfjpwjfoijweofjwoie"
	})
end