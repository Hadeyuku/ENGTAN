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
		}
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
		}
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
		}
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
		}
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
		}
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
		}
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
		}
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
		}
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
		}
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
		}
	]
)

