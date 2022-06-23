--Java
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('次のうち、インポート宣言しなくても、自動的にインポートされるものはどれか.','Java編第1問', 'java.langのクラス', 'java.langのうち、StringとSystemクラス', '梨泰院クラス', 'サブパッケージに属するクラス', 1, 'Java');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('Stringオブジェクトを作成するコードとして、正しいものを選びなさい.','Java編第1問', 'String a = new String("sample");', 'char *str = malloc(sizeof(char) * 5);', 'String c = String.newInstance("sample");', 'String d = String.valueOf("sample");', 1, 'Java');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('次の式のうち、コンパイルエラーにならないものを選びなさい.','Java編第1問', 'byte a = 0b10000000', 'short b = 128 + 128', 'int c = 2 + 3L', 'float d = 10.0', 2, 'Java');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('次の中から、正しい説明を選びなさい.','Java編第1問', 'staticなメソッドからは、staticなメソッドは呼び出せない', 'staticなメソッドからは、staticではないフィールドにアクセスできる', 'staticなメソッドからは、staticではないメソッドを呼び出せる', 'staticではないメソッドからは、staticなフィールドにアクセスできる', 4, 'Java');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('継承の説明として正しいものを選びなさい.','Java編第1問', 'アクセス修飾子がデフォルトのままのフィールドは、全てのサブクラスのメソッドからアクセスできる', 'アクセス修飾子がprivateなメソッドであっても、サブクラスからは利用できる', 'サブクラスであっても、コンストラクタは引き継げない', 'アクセス修飾子がprotectedなメソッドには、同じパッケージに属するサブクラスのみアクセスできる', 3, 'Java');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('java.util.functionパッケージに属する関数型インターフェースで、引数を受けとらず、結果を戻すためのものを選びなさい.','Java編第1問', 'Consumer', 'Function', 'Supplier', 'Predicate', 3, 'Java');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('次の式のうち,ArrayListの説明として正しくないものを選びなさい.','Java編第1問', 'nullは扱えない', '動的な配列として動作する', 'スレッドセーフではない', '値を追加する箇所を制御できる', 1, 'Java');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('エラーに関する説明として、謝っているものを選びなさい.','Java編第1問', 'エラーは、プログラムの実行環境に例外が発生したときにスローされる', 'エラーは、Errorクラスを継承しなければいけない', 'エラーはthrows句に宣言する必要はない', 'エラーは例外処理を記述できない', 4, 'Java');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('immutableなオブジェクトに関する説明として、正しくないものを選びなさい.','Java編第1問', 'どのメソッドもオーバーライドできない', 'どのメソッドにもフィールドの値を変更しない', '全てのフィールドをpublicにする', '全てのフィールドをfinalにする', 3, 'Java');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('次の3つのステートメントを記述する順番として正しいものを選びなさい.','Java編第1問', 'package import class', 'package class import', 'import class package', 'import package class', 1, 'Java');

--DB
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('構造化問い合わせ言語に関して正しい記述はどれか.','DB編第1問',  'SQLは階層型データベースに適した言語である', 'SQLはネットワーク型データベースに適した言語である', '複数の表からデータを結合して抽出するには、SQL文中でそれぞれのROWIDを指定する必要がある', 'SQLの特徴として、データを論理的に処理することができ、検索方法を指定する必要はない', 4, 'データベース');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('単一行ファンクションに関して正しい記述はどれですか.','DB編第1問',  '引数には、列名、リテラル、または指揮を指定できる', '全ての単一行ファンクションは1つの引数のみを受け付ける', 'SELECT文のFROM句でのみ使用できる', '戻り値のデータ型は引数のデータ型と常に一致する', 1, 'データベース');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('内部結合と外部結合について正しい説明はどれですか.','DB編第1問',  '外部結合は結号条件が一致しない行のみを戻す', '完全外部結合が結合条件が一致しない行のみを戻す', '内部結合で返されるの行数は、外部結合で返される行数よりも常に多くなる', '内部結合は結合条件が一致する行のみを戻す', 4, 'データベース');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('あなたは入社日(hire_date)が過去6ヶ月以内の行を表示しようと考えています。どのWHERE句を使用しますか.','DB編第1問',  'WHERE sysdate - hire_date <= 60', 'WHERE ADD_MONTHS(hire_date, 60) <= sysdate', 'WHERE MONTHS_BETWEEN(hire_date, sysdate) <= 60', 'WHERE MONTHS_BETWEEN(sysdate, hire_date) <= 60', 4, 'データベース');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('実行してエラーにならない問い合わせがどれですか.','DB編第1問',  'SELECT MIN(AVG(salary)) FROM employee GROUP BY job_id;', 'SELECT AVG(MIN(salary)) FROM employee', 'SELECT job_id, MIN(AVG(salary)) FROM employee GROUP BY job_id;', 'MITSUMORI IS GENIUS', 1, 'データベース');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
<<<<<<< HEAD
    VALUES ('DB編第6問', 'リレーショナルデータベースの整合性について正しい記述はどれか.', '外部キーは、主キーを参照する', '外部キーはNOT NULL列を参照する', '外部キーの参照先の列は、必ずその外部キーを含む表とは別の表である必要がある', '外部キーの参照先の列は、必ずその外部キーを含む表と同一の表である必要がある', 1, 'DB');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('DB編第7問', 'トランザクションが保証するべきACID特性について、正しい記述はどれですか.','Aは、Availabilityのことである.', 'Cは、Confidentialityのことである.', 'IはIdentifiabilityのことである.', 'DはDurabilityのことである.', 4, 'DB');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('DB編第8問', 'UNION演算子について正しい記述はどれですか.', '重複する値をチェックするときに、NULL値は無視される.', 'デフォルトでは出力はソートされない.', '全てのSELECT文で、選択する列の数が同じでなければならない.', '全てのSELECT文で、列の名前が同じでなければならない.', 3, 'DB');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('DB編第9問', '非等価結合について正しく記述しているのはどれか.', 'USING句で結合条件を指定する.', 'Oracle結合構文で使用できる.', '見積もりどういうつもり', '3つ以上の表を非等価結合することはできない.', 2, 'DB');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('DB編第10問', '次の問い合わせは何を行なっていますか. SELECT employee_id, location_id FROM employees CROSS JOIN departments;', '完全外部結合', '自然結合', 'デカルト積', '副問い合わせ', 3, 'DB');
=======
    VALUES ('リレーショナルデータベースの整合性について正しい記述はどれか.','DB編第6問',  '外部キーは、主キーを参照する', '外部キーはNOT NULL列を参照する', '外部キーの参照先の列は、必ずその外部キーを含む表とは別の表である必要がある', '外部キーの参照先の列は、必ずその外部キーを含む表と同一の表である必要がある', 1, 'DB');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('トランザクションが保証するべきACID特性について、正しい記述はどれですか.','DB編第6問', 'Aは、Availabilityのことである.', 'Cは、Confidentialityのことである.', 'IはIdentifiabilityのことである.', 'DはDurabilityのことである.', 4, 'DB');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('UNION演算子について正しい記述はどれですか.','DB編第6問',  '重複する値をチェックするときに、NULL値は無視される.', 'デフォルトでは出力はソートされない.', '全てのSELECT文で、選択する列の数が同じでなければならない.', '全てのSELECT文で、列の名前が同じでなければならない.', 3, 'DB');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('非等価結合について正しく記述しているのはどれか.','DB編第6問',  'USING句で結合条件を指定する.', 'Oracle結合構文で使用できる.', '見積もりどういうつもり', '3つ以上の表を非等価結合することはできない.', 2, 'DB');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('次の問い合わせは何を行なっていますか. SELECT employee_id, location_id FROM employees CROSS JOIN departments;','DB編第6問',  '完全外部結合', '自然結合', 'デカルト積', '副問い合わせ', 3, 'DB');
>>>>>>> abafddc37113cdaf6d90a6f92bb39213fd6e16f4

--ShortCut
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('デスクトップを表示するショートカットはどれか.','ShortCut編第1問',  'Windows+D', 'Windows+A', 'Windows+B', 'Windows+C', 1, 'ショートカットキー');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('設定画面を表示するショートカットはどれか.','ShortCut編第1問',  'Alt+H', 'Windows+1', 'Windows+I', 'shift+shift', 2, 'ショートカットキー');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('タスクバーの左から2番目のあるアプリを起動するショートカットはどれか.','ShortCut編第1問',  'Windows+F2', 'Windows+2', 'shift+2', 'Alt+2', 2, 'ショートカットキー');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('アプリやウィンドウを切り替えるショートカットはどれか.','ShortCut編第1問',  'Alt+Tab', 'shift+Tab', 'Tab+~', 'Tab+H', 1, 'ショートカットキー');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('操作を元に戻すショートカットはどれか.','ShortCut編第1問',  'Ctrl+Z', 'Ctrl+MITSUMORI', 'Ctrl+TASHIRO', 'Ctrl+HOSHI', 2, 'ショートカットキー');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('クリップボードの履歴を表示するショートカットはどれか','ShortCut編第1問',  'Windows+B', 'Shift+V', 'Ctrl+V', 'Windows+V', 4, 'ショートカットキー');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('エクスプローラーを起動するショートカットはどれか.','ShortCut編第1問',  'Windows+R', 'Ctrl+F', 'Windows+E', 'A+B+C+D', 3, 'ショートカットキー');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('開いているウィンドウを閉じるショートカットはどれか.','ShortCut編第1問',  'Ctrl+4', 'Alt+F4', 'Alt+4', 'Shift+4', 2, 'ショートカットキー');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('指定した範囲のスクリーンショットを撮影するショートカットはどれか.','ShortCut編第1問',  'Windows+Shift+S', 'Windows+S', 'Alt+S', 'PrintScreen', 1, 'ショートカットキー');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('PCをロックするショートカットはどれか','ShortCut編第1問',  'MITSUMORI+L', 'Shift+L', 'Ctrl+L', 'Windows+L', 4, 'ショートカットキー');
-- password1234
insert into users(username, password, authority) values ('Yohei', '76e35854b202efbdab55ed8e298f0fac03e46674203f83030c3e23a3f24d2de135e74149736838cf', 'ADMIN');
insert into users(username, password, authority) values ('Onuki', '5509be33d31222d73e53e1694893853821dddef030bbf84be853540206cec5ee17f1365842a8fb2b', 'USER');

insert into scores (name, score, category) values ('かみむら' , 30, 'データベース');
insert into scores (name, score, category) values ('たかはし' , 50, 'データベース');
insert into scores (name, score, category) values ('おおぬき' , 20, 'データベース');
insert into scores (name, score, category) values ('うめつ' , 10, 'データベース');
insert into scores (name, score, category) values ('上村' , 30, 'Java');
insert into scores (name, score, category) values ('高橋' , 50, 'Java');
insert into scores (name, score, category) values ('大貫' , 20, 'Java');
insert into scores (name, score, category) values ('梅津' , 10, 'Java');
insert into scores (name, score, category) values ('カミムラ' , 30, '簿記');
insert into scores (name, score, category) values ('タカハシ' , 50, '簿記');
insert into scores (name, score, category) values ('オオヌキ' , 20, '簿記');
insert into scores (name, score, category) values ('ウメツ' , 10, '簿記');


insert into inquiry (title, summary) values ('例文タイトル', '例文本文（あああああああああ）');