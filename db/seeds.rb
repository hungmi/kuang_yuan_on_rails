10.times do
	Stone.create!({
		name: "蝴蝶石",
		origin: "fjwofjowf",
		feature: "fjwoifjwoifew",
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