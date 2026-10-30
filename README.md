# simple-memo

실행: https://nuganuga7.github.io/simple-memo/ 에서 회원가입 또는 로그인 → 메모 입력·저장·삭제.
배포: GitHub Pages, main 브랜치 / (root). HTML 한 파일에 CSS/JS 포함. DB 재구성은 schema.sql 참고.

검증(2026-10-30): 배포 첫 화면 정상. 본인 조회·추가·삭제 및 타인 접근 차단 DB 테스트 통과(테스트 데이터 롤백). 사용자 승인 후 실습 전용 Supabase 프로젝트의 Confirm email을 끄고 저장 완료.

미검증: 설정 변경 후 실제 회원가입·자동 로그인, 브라우저 저장·새로고침·삭제·재로그인.
