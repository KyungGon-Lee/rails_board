## 1. flash 메세지 활용하기
1. login 성공, logout 성공하면
flash[:notice] -> 파랗게
2. login 실패(비번 틀리거나, 아이디가 없거나)
flash[:alert] -> 파랗게

# 2. Post, Comment 모델을 User와 연결 시켜주기
1. 게시판 기능 로그인을 해야지만 작동
2. 유저가 작성하는 post, comment에는 유저 정보를 넣어준다.
3. 어떤 유저가 작성하였는지도 보여준다.

# 3. Seed파일 생성 'db/seeds.rb'
1. gem faker를 쓴다.
2. Post를 5개를 만듬(랜덤하게)
3. Comment 10개를 만들거임



## 주의사항 만약 유저가 하나도 없어서 시작 시에 오류가 뜰 시에 /logout 으로 가서 세션을 클리어해주어야 한다

# Rails 프로젝트 생성 'rails_board'

# posts 컨트롤러를 생성합니다.

# Post 모델을 생성합니다. (마이그레이션도 완료한다.)

# get '/' => 'posts#index'

1. 게시글을 모두 보여준다.
2. '/posts/new' '새글 쓰기' 링크를 보여준다.

# 'posts#new'
1. <form>을 통해 title, content -> /posts/created

# 'posts#create'
1. new에서 날아온 데이터로 Post 모델에 새로운 데이터를 create한다.
2. 아무것도 render하지 않고, '/' 리다이렉트 시켜준다.
