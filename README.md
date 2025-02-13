
![image](https://github.com/user-attachments/assets/7c64846b-fc61-4581-85c9-c28bae363c5e)


## 🧳 트립버디 - 협업 기반 여행 계획 서비스

<a href="#1">1. 프로젝트 기획</a>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#1-1">1-1. 개요</a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#1-2">1-2. 배경 및 필요성</a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#1-3">1-3. 주요 기능</a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#1-4">1-4. WBS(Work Breakdown Structure)</a>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#1-5">1-5. 요구사항 명세서 </a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#1-6">1-6. UML(Usecase Diagram)</a>

<a href="#2">2. DB 모델링</a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#2-1">2-1. 논리 모델링</a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#2-2">2-2. 물리 모델링</a>

<a href="#3">3. 서버 구축 </a>

 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#3-1">3-1. 리플리케이션(Replication) </a>

 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#3-2">3-2. DDL </a>

<a href="#4">4. 테스트케이스 </a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#4-1">4-1. 테스트 케이스 정의서 </a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#4-2">4-2. 주요 쿼리문 </a>

<a href="#5">5. 트러블슈팅 </a>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#1-5">1-5. 요구사항 명세서 </a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#1-6">1-6. UML(Usecase Diagram)</a>

<a href="#2">2. DB 모델링</a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#2-1">2-1. 논리 모델링</a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#2-2">2-2. 물리 모델링</a>

<a href="#3">3. 서버 구축 </a>

 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#3-1">3-1. 리플리케이션(Replication) </a>

 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#3-2">3-2. DDL </a>

<a href="#4">4. 테스트케이스 </a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#4-1">4-1. 테스트 케이스 정의서 </a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#4-2">4-2. 주요 쿼리문 </a>

<a href="#5">5. 트러블슈팅 </a>

<table style="width: 100%; text-align: center;">
  <tr>
    <td align="center"> <a href="https://github.com/mijuckboon">곽진웅</a></td>
    <td align="center"> <a href="https://github.com/wishbornDev">김소원</a></td>
    <td align="center"> <a href="https://github.com/oyk0510">오유경</a></td>
    <td align="center"> <a href="https://github.com/hnjee">이현지</a></td>
    <td align="center"> <a href="https://github.com/Cho-Hyun-Seung">조현승</a></td>
    <td align="center"> <a href="https://github.com/dxmlk">한성경</a></td>
  </tr>

  <tr>
    <td align="center"><img src="https://github.com/user-attachments/assets/7002f9c9-57b5-476e-a904-2b61732f57fb" width="150px"/></td>
    <td align="center"><img src="https://github.com/user-attachments/assets/7002f9c9-57b5-476e-a904-2b61732f57fb" width="150px"/></td>
    <td align="center"><img src="https://github.com/user-attachments/assets/7002f9c9-57b5-476e-a904-2b61732f57fb" width="150px"/></td>
    <td align="center"><img src="https://github.com/user-attachments/assets/a7aa5b88-7ff7-4bbf-9b3f-2d8667a18dcc" width="150px"/></td>
    <td align="center"><img src="https://github.com/user-attachments/assets/7002f9c9-57b5-476e-a904-2b61732f57fb" width="150px"/></td>
    <td align="center"><img src="https://github.com/user-attachments/assets/7002f9c9-57b5-476e-a904-2b61732f57fb" width="150px"/></td>
  </tr>
</table>


## <p id="1">1. 프로젝트 기획</p>


### <p id="1-1">1-1. 개요</p>
트립버디는 실시간 공동 작업 및 투표 기능을 활용한 **협업 기반 여행 계획 서비스**입니다. 사용자는 그룹을 생성하여 친구를 초대하고, 그룹에서 여행 일정과 가고 싶은 장소를 토의하며 날짜·장소·예산 등을 투표를 통해 결정할 수 있습니다. 또한, 비용 정산 기능과 사진 공유 앨범을 활용하여 여행 계획을 체계적으로 관리할 수 있으며, 캘린더를 통해 모든 여행 일정을 한눈에 확인하고 기록할 수 있는 편리한 기능을 제공합니다.

### <p id="1-2">1-2. 배경 및 필요성</p>
엔데믹 이후 여행 시장은 급격하게 성장하고 있으며, 특히 모바일과 웹을 활용한 여행 서비스가 새로운 트렌드로 자리 잡고 있습니다. 이에 따라 자연스럽게 여행 일정 수립과 관련된 디지털 플랫폼의 수요도 증가하고 있습니다. 다만 기존의 여행 계획 수립 플랫폼들은 여행 일정 기획에 특화되어 있지 않거나, 협업 기능이 부족합니다. 트립버디는 이러한 시장의 빈틈을 보완하여, **여행 일정이라는 특정 주제를 중심으로 실시간 공동 작업이 가능한 플랫폼을 제공**합니다. 여행을 함께 계획하는 과정에서 발생하는 불편함을 최소화하고, 사용자들이 더욱 원활하게 협업할 수 있도록 지원합니다. 이를 통해, 개인 중심의 여행 계획 서비스를 넘어, **여행을 함께 준비하는 사람들을 위한 최적의 협업 도구로 자리 잡는 것**을 목표로 합니다.

### <p id="1-3">1-3. 주요 기능</p>
#### [ 회원 관리 및 알림 시스템 ]
- 회원 가입 및 로그인
- 개인 정보 관리
- 알림 시스템

#### [ 캘린더 및 일정 관리 ]
- 나의 캘린더
- 그룹 캘린더
- 개인 일정 관리

#### [ 그룹 및 여행방 관리 ]
- 그룹 생성 및 초대
- 그룹 캘린더
- 여행방 관리

#### [ 여행 일정 투표 및 관리 ]
- 투표 시스템
- 여행 세부 일정 관리
- 투표 댓글 기능

#### [ 갤러리 ]
- 사진 및 영상 업로드
- 사진 영상 관리
- 사진 및 영상 댓글 기능

#### [ 예산 및 비용 관리 ]
- 예산 설정
- 비용 관리
- 비용 히스토리 조회회

### <p id="1-4">1-4. WBS(Work Breakdown Structure)</p>

### <p id="1-5">1-5. 요구사항 명세서</p>
![요구사항 명세서](https://github.com/user-attachments/assets/26c892a0-9ac2-4d60-bce0-e6bcd6eaf763)

### <p id="1-6">1-6. UML</p>
![image](https://github.com/user-attachments/assets/20d39e15-95e3-4734-9d13-e92b41ec5810)

## <p id="2">2. DB모델링</p>


### <p id="2-1">2-1. 논리 모델링</p>
![논리 모델](https://github.com/user-attachments/assets/ec1d504a-648d-44dc-a92a-577e6598d8ef)


### <p id="2-2">2-2. 물리 모델링</p>
![물리 모델](https://github.com/user-attachments/assets/680993b9-5395-4080-9988-1883ee5269c3)
