--Java
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('Java編第1問', '次のうち、インポート宣言しなくても、自動的にインポートされるものはどれか.', 'java.langのクラス', 'java.langのうち、StringとSystemクラス', '梨泰院クラス', 'サブパッケージに属するクラス', 1, 'Java');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('Java編第2問', 'Stringオブジェクトを作成するコードとして、正しいものを選びなさい.', 'String a = new String("sample");', 'char *str = malloc(sizeof(char) * 5);', 'String c = String.newInstance("sample");', 'String d = String.valueOf("sample");', 1, 'Java');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('Java編第3問', '次の式のうち、コンパイルエラーにならないものを選びなさい.', 'byte a = 0b10000000', 'short b = 128 + 128', 'int c = 2 + 3L', 'float d = 10.0', 2, 'Java');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('Java編第4問', '次の中から、正しい説明を選びなさい.', 'staticなメソッドからは、staticなメソッドは呼び出せない', 'staticなメソッドからは、staticではないフィールドにアクセスできる', 'staticなメソッドからは、staticではないメソッドを呼び出せる', 'staticではないメソッドからは、staticなフィールドにアクセスできる', 4, 'Java');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('Java編第5問', '継承の説明として正しいものを選びなさい.', 'アクセス修飾子がデフォルトのままのフィールドは、全てのサブクラスのメソッドからアクセスできる', 'アクセス修飾子がprivateなメソッドであっても、サブクラスからは利用できる', 'サブクラスであっても、コンストラクタは引き継げない', 'アクセス修飾子がprotectedなメソッドには、同じパッケージに属するサブクラスのみアクセスできる', 3, 'Java');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('Java編第6問', 'java.util.functionパッケージに属する関数型インターフェースで、引数を受けとらず、結果を戻すためのものを選びなさい.', 'Consumer', 'Function', 'Supplier', 'Predicate', 3, 'Java');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('Java編第7問', '次の式のうち,ArrayListの説明として正しくないものを選びなさい.', 'nullは扱えない', '動的な配列として動作する', 'スレッドセーフではない', '値を追加する箇所を制御できる', 1, 'Java');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('Java編第8問', 'エラーに関する説明として、謝っているものを選びなさい.', 'エラーは、プログラムの実行環境に例外が発生したときにスローされる', 'エラーは、Errorクラスを継承しなければいけない', 'エラーはthrows句に宣言する必要はない', 'エラーは例外処理を記述できない', 4, 'Java');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('Java編第9問', 'immutableなオブジェクトに関する説明として、正しくないものを選びなさい.', 'どのメソッドもオーバーライドできない', 'どのメソッドにもフィールドの値を変更しない', '全てのフィールドをpublicにする', '全てのフィールドをfinalにする', 3, 'Java');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('Java編第10問', '次の3つのステートメントを記述する順番として正しいものを選びなさい.', 'package import class', 'package class import', 'import class package', 'import package class', 1, 'Java');

--DB
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('DB編第1問', '構造化問い合わせ言語に関して正しい記述はどれか.', 'SQLは階層型データベースに適した言語である', 'SQLはネットワーク型データベースに適した言語である', '複数の表からデータを結合して抽出するには、SQL文中でそれぞれのROWIDを指定する必要がある', 'SQLの特徴として、データを論理的に処理することができ、検索方法を指定する必要はない', 4, 'データベース');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('DB編第2問', '単一行ファンクションに関して正しい記述はどれですか.', '引数には、列名、リテラル、または指揮を指定できる', '全ての単一行ファンクションは1つの引数のみを受け付ける', 'SELECT文のFROM句でのみ使用できる', '戻り値のデータ型は引数のデータ型と常に一致する', 1, 'データベース');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('DB編第3問', '内部結合と外部結合について正しい説明はどれですか.', '外部結合は結号条件が一致しない行のみを戻す', '完全外部結合が結合条件が一致しない行のみを戻す', '内部結合で返されるの行数は、外部結合で返される行数よりも常に多くなる', '内部結合は結合条件が一致する行のみを戻す', 4, 'データベース');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('DB編第4問', 'あなたは入社日(hire_date)が過去6ヶ月以内の行を表示しようと考えています。どのWHERE句を使用しますか.', 'WHERE sysdate - hire_date <= 60', 'WHERE ADD_MONTHS(hire_date, 60) <= sysdate', 'WHERE MONTHS_BETWEEN(hire_date, sysdate) <= 60', 'WHERE MONTHS_BETWEEN(sysdate, hire_date) <= 60', 4, 'データベース');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('DB編第5問', '実行してエラーにならない問い合わせがどれですか.', 'SELECT MIN(AVG(salary)) FROM employee GROUP BY job_id;', 'SELECT AVG(MIN(salary)) FROM employee', 'SELECT job_id, MIN(AVG(salary)) FROM employee GROUP BY job_id;', 'MITSUMORI IS GENIUS', 1, 'データベース');

--ShortCut
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('ShortCut編第1問', 'デスクトップを表示するショートカットはどれか.', 'Windows+D', 'Windows+A', 'Windows+B', 'Windows+C', 1, 'ShortCut');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('ShortCut編第2問', '設定画面を表示するショートカットはどれか.', 'Alt+H', 'Windows+1', 'Windows+I', 'shift+shift', 2, 'ShortCut');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('ShortCut編第3問', 'タスクバーの左から2番目のあるアプリを起動するショートカットはどれか.', 'Windows+F2', 'Windows+2', 'shift+2', 'Alt+2', 2, 'ShortCut');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('ShortCut編第4問', 'アプリやウィンドウを切り替えるショートカットはどれか.', 'Alt+Tab', 'shift+Tab', 'Tab+~', 'Tab+H', 1, 'ShortCut');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('ShortCut編第5問', '操作を元に戻すショートカットはどれか.', 'Ctrl+Z', 'Ctrl+MITSUMORI', 'Ctrl+TASHIRO', 'Ctrl+HOSHI', 2, 'ShortCut');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('ShortCut編第6問', 'クリップボードの履歴を表示するショートカットはどれか', 'Windows+B', 'Shift+V', 'Ctrl+V', 'Windows+V', 4, 'ShortCut');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('ShortCut編第7問', 'エクスプローラーを起動するショートカットはどれか.', 'Windows+R', 'Ctrl+F', 'Windows+E', 'A+B+C+D', 3, 'ShortCut');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('ShortCut編第8問', '開いているウィンドウを閉じるショートカットはどれか.', 'Ctrl+4', 'Alt+F4', 'Alt+4', 'Shift+4', 2, 'ShortCut');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('ShortCut編第9問', '指定した範囲のスクリーンショットを撮影するショートカットはどれか.', 'Windows+Shift+S', 'Windows+S', 'Alt+S', 'PrintScreen', 1, 'ShortCut');
INSERT INTO issues (question, description, answer1, answer2, answer3, answer4, answer, category)
    VALUES ('ShortCut編第10問', 'PCをロックするショートカットはどれか', 'MITSUMORI+L', 'Shift+L', 'Ctrl+L', 'Windows+L', 4, 'ShortCut');
-- password1234
insert into users(username, password, authority) values ('Yohei', '76e35854b202efbdab55ed8e298f0fac03e46674203f83030c3e23a3f24d2de135e74149736838cf', 'ADMIN');
insert into users(username, password, authority) values ('Onuki', '5509be33d31222d73e53e1694893853821dddef030bbf84be853540206cec5ee17f1365842a8fb2b', 'USER');

insert into scores (name, score, category) values ('かみむら' , 39, 'データベース');
insert into scores (name, score, category) values ('たかはし' , 50, 'データベース');
insert into scores (name, score, category) values ('おおぬき' , 97, 'データベース');
insert into scores (name, score, category) values ('うめつ' , 20, 'データベース');
insert into scores (name, score, category) values ('上村' , 39, 'Java');
insert into scores (name, score, category) values ('高橋' , 50, 'Java');
insert into scores (name, score, category) values ('大貫' , 97, 'Java');
insert into scores (name, score, category) values ('梅津' , 20, 'Java');
insert into scores (name, score, category) values ('カミムラ' , 39, '簿記');
insert into scores (name, score, category) values ('タカハシ' , 50, '簿記');
insert into scores (name, score, category) values ('オオヌキ' , 97, '簿記');
insert into scores (name, score, category) values ('ウメツ' , 20, '簿記');