# simple-memo

실행: https://nuganuga7.github.io/simple-memo/ 에서 회원가입 또는 로그인 → 메모 입력·저장·삭제.
배포: GitHub Pages, main 브랜치 / (root). HTML 한 파일에 CSS/JS 포함. DB 재구성은 schema.sql 참고.

검증(2026-10-30): 배포 URL 첫 화면 정상. DB 트랜잭션 테스트에서 본인 조회·추가·삭제 성공, 타인 조회·삭제 및 타인 명의 추가 차단 성공(테스트 데이터 전부 롤백).

미완료: Supabase Confirm email 해제 전이라 가입 즉시 자동 로그인과 실제 브라우저 저장·새로고침·삭제·재로그인 검증은 대기 중.
