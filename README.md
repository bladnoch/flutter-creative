# flutterchallenge

- 2 weeks challenge of dart and flutter
- UI design challenge (7/4)
- Pomodoro timer with extra functions (7/6)
- Display movies on the home screen, and shows details of a tapped movie (7/7-8)

<h2>7/12/2023</h2>
- 홈스크린 길이 업데이트
- 홈스크린 SingleScrollView 추가로 위아래로 드레그 가능하게 업데이드 

<h2>7/8/2023</h2>

- 결과 : https://imgur.com/a/mQ8Tq5h
- 화면 구성 : home screen, detail screen
- <img width="427" alt="스크린샷 2023-07-08 오후 8 49 43" src="https://github.com/bladnoch/flutter-challenge/assets/112937442/29ca363b-3c14-4f18-8fc1-f49b2b541407">   <img width="420" alt="스크린샷 2023-07-08 오후 8 49 52" src="https://github.com/bladnoch/flutter-challenge/assets/112937442/bcb2d913-fccb-4f3d-aa22-7a33e07afefc">

- home screen : 인기있는, 상영중인, 개봉예정인 영화를 각각의 api를 통해 화면에 출력
  - popular movies(인기) : https://movies-api.nomadcoders.workers.dev/popular
  - now on cinemas(상영중) : https://movies-api.nomadcoders.workers.dev/now-playing
  - coming soon(개봉예정) : https://movies-api.nomadcoders.workers.dev/coming-soon
 
- detail screen : 탭한 영화의 디테일을 화면에 출력
- home_screen을 통해 id를 받아서 디테일 api를 사용
-  https://movies-api.nomadcoders.workers.dev/movie?id=${id}
  - 뒷 배경화면으로 포스터 출력
  - 타이틀
  - 평점
  - 상영시간
  - 장르
  - 스토리라인 : api를 통한 스토리라인 출력
  - 구매버튼: 구매버튼을 누르면 "ticket issued" 메시지 출력



<h2>7/7/2023</h2>

- last challenge : movie application
  
    - Home 스크린은 아래와 같은 기능을 갖고있어야 합니다.
      - 가장 인기 있는 영화 목록이 표시되어야 합니다.
      - 극장에서 상영 중인 영화 목록이 표시되어야 합니다.
      - 곧 개봉할 영화 목록이 표시되어야 합니다.
     movie를 탭하면 세부정보 화면으로 이동해야 합니다.
    - 세부정보 화면에는 다음이 표시되어야 합니다.
      - 영화의 포스터.
      - 영화의 제목.
      - 영화의 등급.
      - 영화의 개요.
      - 영화의 장르.

- popular movie application
- popular movie API(https://movies-api.nomadcoders.workers.dev/popular) :
<pre><code>{
  "page": 1,
    "results": [
        {
            "adult": false,
            "backdrop_path": "/oqP1qEZccq5AD9TVTIaO6IGUj7o.jpg",
            "genre_ids": [
                14,
                28,
                12
            ],
            "id": 455476,
            "original_language": "en",
            "original_title": "Knights of the Zodiac",
            "overview": "When a headstrong street orphan, Seiya, in search of his abducted sister unwittingly taps into hidden powers, he discovers he might be the only person alive who can protect a reincarnated goddess, sent to watch over humanity. Can he let his past go and embrace his destiny to become a Knight of the Zodiac?",
            "popularity": 3369.887,
            "poster_path": "/qW4crfED8mpNDadSmMdi7ZDzhXF.jpg",
            "release_date": "2023-04-27",
            "title": "Knights of the Zodiac",
            "video": false,
            "vote_average": 6.5,
            "vote_count": 312
        },
  }</code></pre>

- 상영중인 영화 API :  https://movies-api.nomadcoders.workers.dev/now-playing
<pre><code>
{
    "dates": {
        "maximum": "2023-07-12",
        "minimum": "2023-05-25"
    },
    "page": 1,
    "results": [
        {
            "adult": false,
            "backdrop_path": "/oqP1qEZccq5AD9TVTIaO6IGUj7o.jpg",
            "genre_ids": [
                14,
                28,
                12
            ],
            "id": 455476,
            "original_language": "en",
            "original_title": "Knights of the Zodiac",
            "overview": "When a headstrong street orphan, Seiya, in search of his abducted sister unwittingly taps into hidden powers, he discovers he might be the only person alive who can protect a reincarnated goddess, sent to watch over humanity. Can he let his past go and embrace his destiny to become a Knight of the Zodiac?",
            "popularity": 3369.887,
            "poster_path": "/qW4crfED8mpNDadSmMdi7ZDzhXF.jpg",
            "release_date": "2023-04-27",
            "title": "Knights of the Zodiac",
            "video": false,
            "vote_average": 6.5,
            "vote_count": 312
        },
</code></pre>

 - 상영예정 영화 API :  https://movies-api.nomadcoders.workers.dev/coming-soon
<pre><code>
{
    "dates": {
        "maximum": "2023-08-01",
        "minimum": "2023-07-13"
    },
    "page": 1,
    "results": [
        {
            "adult": false,
            "backdrop_path": "/oqP1qEZccq5AD9TVTIaO6IGUj7o.jpg",
            "genre_ids": [
                14,
                28,
                12
            ],
            "id": 455476,
            "original_language": "en",
            "original_title": "Knights of the Zodiac",
            "overview": "When a headstrong street orphan, Seiya, in search of his abducted sister unwittingly taps into hidden powers, he discovers he might be the only person alive who can protect a reincarnated goddess, sent to watch over humanity. Can he let his past go and embrace his destiny to become a Knight of the Zodiac?",
            "popularity": 3369.887,
            "poster_path": "/qW4crfED8mpNDadSmMdi7ZDzhXF.jpg",
            "release_date": "2023-04-27",
            "title": "Knights of the Zodiac",
            "video": false,
            "vote_average": 6.5,
            "vote_count": 312
        },
</code></pre>

- 영화에 대한 세부 정보
- https://movies-api.nomadcoders.workers.dev/movie?id=1
- id= 를 API에 저장된 아이디로 변환시 세부정보 접근
- 접근시 요소
- 포스터, 제목, 등급, 개요, 장르
- poster_path, original_title, vote_average, overview, genre_ids
<pre><code>
{
    "adult": false,
    "backdrop_path": "/oqP1qEZccq5AD9TVTIaO6IGUj7o.jpg",
    "belongs_to_collection": null,
    "budget": 60000000,
    "genres": [
        {
            "id": 14,
            "name": "Fantasy"
        },
        {
            "id": 28,
            "name": "Action"
        },
        {
            "id": 12,
            "name": "Adventure"
        }
    ],
    "homepage": "https://kotzmovie.com",
    "id": 455476,
    "imdb_id": "tt6528290",
    "original_language": "en",
    "original_title": "Knights of the Zodiac",
    "overview": "When a headstrong street orphan, Seiya, in search of his abducted sister unwittingly taps into hidden powers, he discovers he might be the only person alive who can protect a reincarnated goddess, sent to watch over humanity. Can he let his past go and embrace his destiny to become a Knight of the Zodiac?",
    "popularity": 3355.755,
    "poster_path": "/qW4crfED8mpNDadSmMdi7ZDzhXF.jpg",
    "production_companies": [
        {
            "id": 11341,
            "logo_path": "/xytTBODEy3p20ksHL4Ftxr483Iv.png",
            "name": "Stage 6 Films",
            "origin_country": "US"
        },
        {
            "id": 5542,
            "logo_path": "/ayE4LIqoAWotavo7xdvYngwqGML.png",
            "name": "Toei Animation",
            "origin_country": "JP"
        }
    ],
    "production_countries": [
        {
            "iso_3166_1": "JP",
            "name": "Japan"
        },
        {
            "iso_3166_1": "US",
            "name": "United States of America"
        }
    ],
    "release_date": "2023-04-27",
    "revenue": 6794519,
    "runtime": 112,
    "spoken_languages": [
        {
            "english_name": "English",
            "iso_639_1": "en",
            "name": "English"
        },
        {
            "english_name": "Hungarian",
            "iso_639_1": "hu",
            "name": "Magyar"
        }
    ],
    "status": "Released",
    "tagline": "Go beyond your destiny.",
    "title": "Knights of the Zodiac",
    "video": false,
    "vote_average": 6.482,
    "vote_count": 310
}
</code></pre>

<h2>7/6/2023</h2>

- POMODORO TIMER challenge

  - 목표 :
    - 앱은 아래와 같은 기능을 갖고있어야 합니다.
    - 유저가 타이머의 시간(15, 20, 25, 30, 35)을 선택할 수 있어야 합니다.
    - 유저가 타이머를 재설정 (리셋)할 수 있어야 합니다.
    - 유저가 한 사이클을 완료한 횟수를 카운트해야 합니다.
    - 유저가 4개의 사이클(1라운드)를 완료한 횟수를 카운트해야 합니다.
    - 각 라운드가 끝나면 사용자가 5분간 휴식을 취할 수 있어야 합니다.
  
- 버튼별 클릭시 버튼색 반전으로 선택된 버튼 확인 가능
- 결과 : https://imgur.com/a/VFubQtW
- <img width="426" alt="스크린샷 2023-07-07 오전 12 09 55" src="https://github.com/bladnoch/flutter-challenge/assets/112937442/1cd198e3-4212-473d-bdd0-2f7f81e0feef">

<h2>7/5/2023</h2>
-


<h2>7/4/2023</h2>

- UI Clone Challenge
- 결과 : https://imgur.com/a/9KUttrb
- <img width="466" alt="스크린샷 2023-07-04 오후 4 52 57" src="https://github.com/bladnoch/flutter-challenge/assets/112937442/a3befd0a-b9e3-4479-80b7-1ab1856cc711">


<h2>7/3/2023</h2>

- flutter 초기 세팅
- 모든 flutter 요소는 material에 속해있다.
- widget들의 조합으로 어플의 모든 기능이 구현된다.




<h2>6/30/2023</h2>

- 프로젝트 이름: day_one
- 해당 파일: DayFive.dart
- First code challenge
- Challenge goals: Using everything we learned, make a Dictionary class with the following methods:


 
<h2>6/29/2023</h2>

- Student std=new Student();
- var std=Student;
- extends 대신 with로 변수나 메소드 사용 가능
- Player.info()형식으로 생성자 사용, 초기화 가능

<h2>6/28/2023</h2>

- named function은 parameter에 중괄호를 쳐준다 그럴경우 순서에 상관없이 map처럼 파라미터 이름과 value를 추가한다.
  생성자처럼 번수를 주지 않았을 경우에도 default로 값을 지정해줄 수 있다.
- left ?? right. 
- (left==!null)? left : right
 
<h2>6/27/2023</h2>

- collection if/for : using loop, of if to add/update variable into a list
- set vs list : list keeps all values even values are same, set's values have to be unique

 

<h2>6/26/2023</h2>

- dynamic == python variable like
- const == like 'final' but using if the program do not have value
- String? == String variable can have null value




