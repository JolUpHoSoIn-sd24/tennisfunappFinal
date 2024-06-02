# tennisfun

2024-1 캡스톤디자인

## Getting Started

```shell
lib
  ├── app # 앱 전체 설정을 관리합니다.
  ├── common # 공통으로 사용하는 설정입니다.
  │   ├── api # api 관련 코드입니다.
  │   ├── di # getIt 기반 의존성 주입 설정입니다.
  │   ├── generated_code # 생성되는 코드를 모아놓습니다.
  │   └── router # 라우팅 관련 코드입니다.
  ├── domain
  │   └── auth
  │       └── repository # 외부 서버 또는 로컬 저장소 등에서 데이터를 받아와, 내부 엔티티로 매핑합니다.
  └── presentation
      ├── bloc # Bloc 기반 상태 관리를 진행합니다.
      ├── component # 페이지 내부에 들어가는 여러 컴포넌트들을 모아놓습니다.
      └── page # UI 페이지 입니다.
```