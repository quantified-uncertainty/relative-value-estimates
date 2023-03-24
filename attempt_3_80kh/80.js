// Value of the future
value_of_future = 1 // normalized :^)
item_value_of_future = {
  id: "2",
  id_num: 2,
  name: "ai safety technical research",
	value: value_of_future
}

// AI Safety Technical Research

risk_from_agi = beta(2.35, 49)
// 0.01 to 0.1, or 1% to 10%
chance_avoiding_it = beta(6.95069456510599, 0.504392131380822)
// 75% to 100%
chance_being_deciding_technical_contribution = beta(0.8392512366524476, 266.34779818393696)
// 1/10k to 1/100
value_ai_safety_technical_research = risk_from_agi * 
  (1 - chance_avoiding_it) *
  chance_being_deciding_technical_contribution

item_ai_safety_technical_research = {
  id: "2",
  id_num: 2,
  name: "ai safety technical research",
	value: value_ai_safety_technical_research
}

// Shaping future governance of AI
chance_being_deciding_political_contribution =  beta(0.8403696287077793, 2677.1062463828766)
// 1/100k to 1/1k
value_ai_governance = risk_from_agi * 
  (1 - chance_avoiding_it) *
