# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
	email: "test_admin@gmail.com",
	password: "password"
)

Word.create!(
	[
		{
			customer_id: 1,
			name: "environment",
			meaning: "環境",
			sentence: "You should check an operating environment before you start to work",
			memo: "protect the environment 環境保護",
			image: File.open("./app/assets/images/environment.jpg"),
			part_of_speech: 0,
			status: 0,
			genre: 1
		},
		{
			customer_id: 1,
			name: "inconvenience",
			meaning: "不便",
			sentence: "We are sorry for the inconvenience",
			memo: "綴り注意 convenienceで便利",
			image: File.open("./app/assets/images/inconvenience.jpg"),
			part_of_speech: 0,
			status: 0,
			genre: 1
		},
		{
			customer_id: 1,
			name: "preference",
			meaning: "設定",
			sentence: "Click preference",
			memo: "preferで好む　個人の好みだから設定",
			image: File.open("./app/assets/images/preference.png"),
			part_of_speech: 0,
			status: 0,
			genre: 1
		},
		{
			customer_id: 1,
			name: "array",
			meaning: "配列",
			sentence: "The enemy troops were arrayed on the hill",
			memo: "an array of umbrellasでずらりと並んだ傘　配列から連想すると覚えやすい",
			image: File.open("./app/assets/images/array.png"),
			part_of_speech: 0,
			status: 0,
			genre: 1
		},
		{
			customer_id: 1,
			name: "argument",
			meaning: "引数",
			sentence: "Methods can take arguments",
			memo: "日常生活では議論という意味で使うことが多い",
			image: File.open("./app/assets/images/argument.png"),
			part_of_speech: 0,
			status: 0,
			genre: 1
		},
		{
			customer_id: 1,
			name: "spec(specification)",
			meaning: "仕様",
			sentence: "The file specification for this application is public. ",
			memo: "日本語では略してスペックということが多い",
			image: File.open("./app/assets/images/spec.png"),
			part_of_speech: 0,
			status: 0,
			genre: 1
		},
		{
			customer_id: 1,
			name: "variable",
			meaning: "変数",
			sentence: "undefined local variable or method",
			memo: "変数は定義しないと使えない",
			image: File.open("./app/assets/images/variable.png"),
			part_of_speech: 0,
			status: 0,
			genre: 1
		},
		{
			customer_id: 1,
			name: "develop",
			meaning: "開発する",
			sentence: "develop a new product",
			memo: "develop branchとしても使う",
			image: File.open("./app/assets/images/develop.png"),
			part_of_speech: 1,
			status: 0,
			genre: 1
		},
		{
			customer_id: 1,
			name: "verify",
			meaning: "検証する",
			sentence: "Have you verified these facts?",
			memo: "確認するといった意味",
			image: File.open("./app/assets/images/verify.png"),
			part_of_speech: 1,
			status: 0,
			genre: 1
		},
		{
			customer_id: 1,
			name: "initialize",
			meaning: "初期化する",
			sentence: "initialize an array",
			memo: "最初の状態にすること",
			image: File.open("./app/assets/images/initialize.png"),
			part_of_speech: 1,
			status: 0,
			genre: 1
		},
		{
			customer_id: 1,
			name: "fix",
			meaning: "修正する",
			sentence: "I can fix a computer",
			memo: "類義語にmodifyがある",
			image: File.open("./app/assets/images/fix.png"),
			part_of_speech: 1,
			status: 0,
			genre: 1
		},
		{
			customer_id: 1,
			name: "configure",
			meaning: "設定する",
			sentence: "I will configure my new computer",
			memo: "configでおなじみ",
			image: File.open("./app/assets/images/configure.png"),
			part_of_speech: 1,
			status: 0,
			genre: 1
		},
		{
			customer_id: 1,
			name: "available",
			meaning: "利用できる",
			sentence: "Wifi is available in this apartment",
			memo: "日常生活でもよく使う",
			image: File.open("./app/assets/images/available.png"),
			part_of_speech: 2,
			status: 0,
			genre: 1
		},
		{
			customer_id: 1,
			name: "reliable",
			meaning: "頼りになる",
			sentence: "Is the source of the information reliable?",
			memo: "reliable人間になりたい",
			image: File.open("./app/assets/images/reliable.png"),
			part_of_speech: 2,
			status: 0,
			genre: 1
		},
		{
			customer_id: 1,
			name: "appropriate",
			meaning: "適切な",
			sentence: "This dress is more appropriate for the party.",
			memo: "動詞で着服するという意味もある",
			image: File.open("./app/assets/images/appropriate.png"),
			part_of_speech: 2,
			status: 0,
			genre: 1
		},
		{
			customer_id: 1,
			name: "existing",
			meaning: "既存の",
			sentence: "the existing system",
			memo: "動詞exitの形容詞",
			image: File.open("./app/assets/images/existing.png"),
			part_of_speech: 2,
			status: 0,
			genre: 1
		},
		{
			customer_id: 1,
			name: "authenticated",
			meaning: "本物であることを証明する",
			sentence: "the authenticated user",
			memo: "before authenticateで使う",
			image: File.open("./app/assets/images/authenticate.png"),
			part_of_speech: 2,
			status: 0,
			genre: 1
		},
		{
			customer_id: 1,
			name: "currently",
			meaning: "現在",
			sentence: "She's currently working in our New York office.",
			memo: "currentで現在の",
			image: File.open("./app/assets/images/currently.png"),
			part_of_speech: 3,
			status: 0,
			genre: 1
		},
		{
			customer_id: 1,
			name: "always",
			meaning: "いつも",
			sentence: "He is always in a hurry.",
			memo: "ALWAYS続・三丁目の夕日で馴染みがあるかも",
			image: File.open("./app/assets/images/always.png"),
			part_of_speech: 3,
			status: 0,
			genre: 1
		},
		{
			customer_id: 1,
			name: "extremely",
			meaning: "非常に",
			sentence: "It is extremely hot today.",
			memo: "類義語super",
			image: File.open("./app/assets/images/extremely.png"),
			part_of_speech: 3,
			status: 0,
			genre: 1
		},
		{
			customer_id: 1,
			name: "conciliatory",
			meaning: "和解の",
			sentence: "As a conciliatory gesture, he offered to take his wife to dinner.",
			memo: "conciliateなだめる",
			image: File.open("./app/assets/images/extremely.png"),
			part_of_speech: 2,
			status: 0,
			genre: 0
		},
		{
			customer_id: 1,
			name: "defamatory",
			meaning: "中傷的な",
			sentence: "defamatory report",
			memo: "defame名誉を傷つける",
			image: File.open("./app/assets/images/defamatory.png"),
			part_of_speech: 2,
			status: 0,
			genre: 0
		},
		{
			customer_id: 1,
			name: "deferential",
			meaning: "敬意を表する",
			sentence: "The younger scientist took a deferential attitude to the professor.",
			memo: "類義語respectful",
			image: File.open("./app/assets/images/deferential.png"),
			part_of_speech: 2,
			status: 0,
			genre: 0
		},
		{
			customer_id: 1,
			name: "despicable",
			meaning: "卑劣な",
			sentence: "despicable criminal act",
			memo: "類義語abominable",
			image: File.open("./app/assets/images/despicable.png"),
			part_of_speech: 2,
			status: 0,
			genre: 0
		},
		{
			customer_id: 1,
			name: "baseball",
			meaning: "野球",
			sentence: "I watch baseball everyday",
			memo: "野球よりサッカーが好き",
			part_of_speech: 0,
			status: 0,
			genre: 0
		},
		{
			customer_id: 1,
			name: "desk",
			meaning: "机",
			sentence: "My desk is not stable",
			memo: "誰もが知ってる単語",
			part_of_speech: 0,
			status: 0,
			genre: 0
		},
		{
			customer_id: 1,
			name: "laptop",
			meaning: "ノートパソコン",
			sentence: "My laptop is mac book air",
			memo: "膝（lap)の上で使うパソコンだから",
			part_of_speech: 0,
			status: 0,
			genre: 0
		},
		{
			customer_id: 1,
			name: "stapler",
			meaning: "ホチキス",
			sentence: "I borrowed a stapler from my friend",
			memo: "間違えやすい和製英語",
			part_of_speech: 0,
			status: 0,
			genre: 0
		},
		{
			customer_id: 1,
			name: "eraser",
			meaning: "消しゴム",
			sentence: "I borrowed aｎ eraser from my friend",
			memo: "間違えやすい和製英語",
			part_of_speech: 0,
			status: 0,
			genre: 0
		},
		{
			customer_id: 1,
			name: "outlet",
			meaning: "コンセント",
			sentence: "Where is an outlet?",
			memo: "間違えやすい和製英語",
			part_of_speech: 0,
			status: 0,
			genre: 0
		}
	]
)

[*(0..30)].each do |i|
Tag.create!(
	[
		{
			name: "sample",
			word_id: i
		}
	]
)
end