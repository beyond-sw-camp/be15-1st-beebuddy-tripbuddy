
![image](https://github.com/user-attachments/assets/7c64846b-fc61-4581-85c9-c28bae363c5e)

## 🐝 beebuddy! 팀원 소개  
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
    <td align="center"><img src="https://github.com/user-attachments/assets/c5ea1f98-b4c1-4d4a-a221-602fae97db86" width="150px"/></td>
    <td align="center"><img src="https://github.com/user-attachments/assets/7002f9c9-57b5-476e-a904-2b61732f57fb" width="150px"/></td>
    <td align="center"><img src="https://github.com/user-attachments/assets/7002f9c9-57b5-476e-a904-2b61732f57fb" width="150px"/></td>
    <td align="center"><img src="https://github.com/user-attachments/assets/a7aa5b88-7ff7-4bbf-9b3f-2d8667a18dcc" width="150px"/></td>
    <td align="center"><img src="https://github.com/user-attachments/assets/7002f9c9-57b5-476e-a904-2b61732f57fb" width="150px"/></td>
    <td align="center"><img src="https://github.com/user-attachments/assets/a16628c4-0cc1-4348-aed4-8f8ba9d611a0" width="150px"/></td>
  </tr>
</table>
  <br>

## 🧳 트립버디 개요

<a href="#1">1. 프로젝트 기획</a>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#1-1">1-1. 주제</a>

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

<a href="#5">5. 트러블슈팅 </a>

<a href="#5">6. 팀원 회고 </a>

<br>


## <p id="1">1. 프로젝트 기획</p>


### <p id="1-1">1-1. 주제</p>
트립버디는 실시간 공동 작업 및 투표 기능을 활용한 **협업 기반 여행 계획 서비스**입니다. 
<br><br>
사용자는 그룹을 생성하여 친구를 초대하고, 그룹에서 여행 일정과 가고 싶은 장소를 토의하며 날짜·장소·예산 등을 투표를 통해 결정할 수 있습니다. 또한, 비용 정산 기능과 사진 공유 앨범을 활용하여 여행 계획을 체계적으로 관리할 수 있으며, 캘린더를 통해 모든 여행 일정을 한눈에 확인하고 기록할 수 있는 편리한 기능을 제공합니다.
<br><br>
### <p id="1-2">1-2. 배경 및 필요성</p>
#### [ 국내 관광 시장 규모의 성장 ]
<img src="https://github.com/user-attachments/assets/269e3016-154c-44a1-b4c4-95a7e7520968" width="600px"/> <br>
코로나19 팬데믹이 종식되고 억눌렸던 여행 수요가 폭발적으로 증가하면서 관광업, 항공업, 숙박업 등 다양한 분야에서 활발한 성장이 이루어지고 있다. 2022년에는 국내 관광 시장 규모는 14조 900억 원으로, 2019년 대비 97% 수준으로 회복되었습니다. 더 나아가 2027년에는 19조 6,900억 원 시장 규모를 형성할 것으로 전망됩니다. 

#### [ 국내 여행 플랫폼 시장 규모의 성장 ]  
<img src="https://github.com/user-attachments/assets/c864aca5-6e03-4bba-b31d-2527b376af7f" width="400px"/> 
<img src="https://github.com/user-attachments/assets/d6cb9a56-cade-4c85-868e-8b30c20a3f33" width="420px"/> <br>
여행 수요 증가와 함께 모바일과 웹을 활용한 여행 상품 판매 방식이 강화되고 있으며, 여행 플랫폼 앱의 시장성이 급속도로 확대되고 있습니다.
위의 자료는 주요 여행 플랫폼 앱을 대상으로 조사한 결과, 사용자와 월간 결제 추정 금액이 코로나19 이전 대비 약 2배 증가한 것을 보여줍니다. <br><br>

이처럼 엔데믹 이후 여행 시장은 급격하게 성장하고 있으며, 특히 모바일과 웹을 활용한 여행 서비스가 새로운 트렌드로 자리 잡고 있습니다. 자연스럽게 여행 일정 수립과 관련된 디지털 플랫폼의 수요도 증가하고 있음을 확인할 수 있습니다. 

#### [ 기존 여행 계획 플랫폼의 한계 ]
|  | **트리플** | **마이리얼트립** | **노션** |
| --- | --- | --- | --- |
| **서비스 성격** | 개인 맞춤형 여행 일정 & 가이드 제공 | 여행 상품 및 가이드 연결 플랫폼 | 업무 및 프로젝트 관리를 위한 다목적 협업 툴 |
| **핵심기능**  | AI 기반 일정 추천, 여행 후기, 지도, 맛집·명소 정보 제공 | 항공권/숙소/투어 예약, 여행 가이드 연결, 맞춤형 여행 플랜 제공 | 문서 및 위키 관리, 작업 관리,  일정관리, 협업/공유 기능 특화   |
| **주 이용자** | 자유여행을 직접 계획하는 사람 | 가이드 투어나 맞춤 | 프로젝트나 개인 작업을 정리하고 싶은 사람  |

- 여행 계획 서비스 - 트리플, 마이리얼트립
: 기존의 여행 계획 서비스는 주로 개인의 일정 계획을 돕거나, 여행 관련 정보를 제공하는 데 중점을 두고 있습니다. 하지만, 이들 서비스는 여행을 함께 계획하는 사용자들이 실시간으로 소통하고 조율할 수 있는 <b>협업 기능이 부족합니다. </b>
- 다목적 협업툴 - 노션
: Notion과 같은 협업툴은 실시간 공동 작업 기능을 제공하지만, 일반적인 업무 및 프로젝트 관리에 초점이 맞춰져 있어 <b>여행 일정 기획에 특화되어 있지 않습니다.</b>

#### [ 트립버디의 차별성: 여행일정 + 협업 ] 
<img src="https://github.com/user-attachments/assets/06a2a36a-5d2e-45cb-a85a-61e4d2428b74" width="400px"/> <br>
기존의 여행 계획 수립 플랫폼들은 여행 일정 기획에 특화되어 있지 않거나, 협업 기능이 부족합니다. 트립버디는 이러한 시장의 빈틈을 보완하여, **여행 일정이라는 특정 주제를 중심으로 + 실시간 공동 작업이 가능한 플랫폼을 제공**합니다. 여행을 함께 계획하는 과정에서 발생하는 불편함을 최소화하고, 사용자들이 더욱 원활하게 협업할 수 있도록 지원합니다. 이를 통해, 개인 중심의 여행 계획 서비스를 넘어, **여행을 함께 준비하는 사람들을 위한 최적의 협업 도구로 자리 잡는 것**을 목표로 합니다.
<br><br>
### <p id="1-3">1-3. 주요 기능</p>
#### 📝 그룹 여행방 일정 보드
- 여행 날짜, 여행지, 숙소, 교통 수단, 식당 등의 일정 리스트를 팀원들과 동시에 편집 가능
- 등록된 일정 수정 및 삭제 가능
- 여행 하루 전 일정 알림 기능 제공
#### 📅 그룹 캘린더 기능
- 그룹원들의 개별 일정을 반영한 최적의 여행 날짜 조율
#### 🗳️ 투표 기능
- 일정, 숙소 등 주요 결정을 손쉽게 투표로 결정
- 완료된 투표 결과를 여행 일정에 반영
#### 💰 예산 관리 및 정산 기능
- 여행 전 항목 별 예산 설정 가능
- 여행 중 발생한 비용을 금액, 날짜, 카테고리 등과 함께 기록
- 비용 기록 히스토리 조회 가능 
#### 📸 사진 공유 및 여행 기록 기능
- 여행 후 사진을 공유하고 기록을 보관하여 활용
- 여행 종료 시 자동 사진 공유 요청 알림 제공
#### 🔔 회원 관리 및 알림 시스템
- 회원 가입 및 개인 정보 관리 
- 그룹 초대, 투표 생성, 갤러리 공유 등 실시간 알림 제공 및 개별 설정 가능
#### 👥 그룹 및 여행방 관리 
- 그룹 생성 및 초대
- 그룹 내 여러 개의 여행 방 생성 가능 
<br><br>
### <p id="1-4">1-4. WBS(Work Breakdown Structure)</p>
<a href="https://docs.google.com/spreadsheets/d/1g5JGdYRIqlfTwxo8pWvn_RjXfj637lqHXj-BadZo7cY/edit?gid=661890835#gid=661890835">WBS</a>
<br><br>
### <p id="1-5">1-5. 요구사항 명세서</p>
<a href="https://docs.google.com/spreadsheets/d/1g5JGdYRIqlfTwxo8pWvn_RjXfj637lqHXj-BadZo7cY/edit?gid=1875085029#gid=1875085029">요구사항 명세서</a>
![요구사항 명세서](https://github.com/user-attachments/assets/26c892a0-9ac2-4d60-bce0-e6bcd6eaf763)

### <p id="1-6">1-6. UML</p>
![image](https://github.com/user-attachments/assets/20d39e15-95e3-4734-9d13-e92b41ec5810)

## <p id="2">2. DB모델링</p>

### <p id="2-1">2-1. 논리 모델링</p>
![논리 모델](https://github.com/user-attachments/assets/ec1d504a-648d-44dc-a92a-577e6598d8ef)


### <p id="2-2">2-2. 물리 모델링</p>
![물리 모델](https://github.com/user-attachments/assets/680993b9-5395-4080-9988-1883ee5269c3)


## <p id="3">3. 서버 구축</p>
### <p id="3-1">3-1. 리플리케이션</p>
### <p id="3-2">3-2. DDL</p>
[DDL](https://github.com/beebuddy1/be15-1st-beebuddy-tripbuddy/blob/a1ba4df29c8ee8648c906ceb246ab0a3a9b5330f/src/ddl/ddl.sql)


## <p id="4">4. 테스트케이스 </p>
<a href="https://docs.google.com/spreadsheets/d/1g5JGdYRIqlfTwxo8pWvn_RjXfj637lqHXj-BadZo7cY/edit?gid=2127407408#gid=2127407408">테스트 케이스</a>



## <p id="5">5. 트러블슈팅</p>


