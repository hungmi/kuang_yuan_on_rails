3.times do
	Stone.create!({
		zh_name: "蝴蝶石#{rand(1..99)}",
		en_name: "Butterfly",
		origin: "台灣台中",
		feature: "耐操好用",
		size: "400*320*30",
		number: "0984322",
		good_place: "會議室",
		description: "jowjfowijfoiwjfowi
		jfowjeofjweofijwf",
	})
end

2.times do
	Stone.find(rand(1..10)).examples.create!({
		zh_name: "案例#{rand(1..99)}號",
		en_name: "Example#{rand(1..99)}號",
		date_and_time: "完成日期或是製作時間長短",
		description: "這裡是專案描述。Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error."
	})
	Stone.find(rand(1..10)).techniques.create!({
		zh_name: "工法#{rand(1..99)}號",
		en_name: "Technique#{rand(1..99)}號",
		description: "這裡是專案描述。Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error."
	})
end

TabsTitle.create({
  title: "歡迎光臨"
})

Admin.create({
  email: "admin@email.com",
  password: "admin1234",
  password_confirmation: "admin1234"
})

Tab.create(
  title: "關於礦元",
  description: "礦元石業不斷戮力精進裝飾建築之美而努力，透過聯營 方式整合石材業，從上、中、下游採一貫作業的服務。目前聯 營體系有：大剖廠、加工廠、工程處...我們期待，成為您最佳建築的美容師，品味完美生活的魔法師。",
  priority: 1,
  icon: "glyphicon-home"
)

Tab.create(
  title: "專業服務",
  description: "世界各國大理石、花崗石進口，萊姆石、化石、鏽石、大板買賣。",
  priority: 2,
  icon: "glyphicon-thumbs-up"
)

Tab.create(
  title: "專業施工",
  description: "內牆、外牆、地面、電梯門框、電視牆、樓梯、衛浴、洗手檯、檯面。",
  priority: 3,
  icon: "glyphicon-wrench"
)

Tab.create(
  title: "服務熱忱",
  description: "培訓具石材專業知識的業務人員，提供您所有石材知識上的了解需求。延攬技術優秀、工法細膩的工班人員，以誠信態度及精良品質，提供您最熱忱的服務。",
  priority: 4,
  icon: "glyphicon-heart-empty"
)

Tab.create(
  title: "多年經驗",
  description: "2015年成立礦元石業倉儲並設立辦公室於台中烏日區2016年礦元石業開幕正式營運",
  priority: 5,
  icon: "glyphicon-briefcase"
)
