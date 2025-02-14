
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
    <td align="center"><img src="https://github.com/user-attachments/assets/6d90b398-ee24-4c91-806c-36c35d6c4a31" width="150px" height="130px"/></td>
    <td align="center"><img src="https://github.com/user-attachments/assets/82943f25-208e-4ab7-9245-6ffe9662cea2" width="150px" height="130px"/></td>
    <td align="center"><img src="https://github.com/user-attachments/assets/cb0ba9a4-c19b-4ce7-ac6e-8f8df777d121" width="150px" height="130px"/></td>
    <td align="center"><img src="https://github.com/user-attachments/assets/a7aa5b88-7ff7-4bbf-9b3f-2d8667a18dcc" width="150px" height="130px"/></td>
    <td align="center"><img src="https://github.com/user-attachments/assets/c36e4e7f-da00-469d-b76d-a1e7163ac76c" width="150px" height="130px"/></td>
    <td align="center"><img src="https://github.com/user-attachments/assets/a16628c4-0cc1-4348-aed4-8f8ba9d611a0" width="150px" height="130px"/></td>
  </tr>
</table>
  <br>


## 🧳 트립버디 개요

📑 <a href="#1">1. 프로젝트 기획</a>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#1-1">1-1. 주제</a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#1-2">1-2. 배경 및 필요성</a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#1-3">1-3. 주요 기능</a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#1-4">1-4. WBS(Work Breakdown Structure)</a>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#1-5">1-5. 요구사항 명세서 </a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#1-6">1-6. UML(Usecase Diagram)</a>

🗃️ <a href="#2">2. DB 모델링</a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#2-1">2-1. 논리 모델링</a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#2-2">2-2. 물리 모델링</a>

🛠️ <a href="#3">3. 서버 구축 </a>

 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#3-1">3-1. 리플리케이션(Replication) </a>

 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#3-2">3-2. DDL </a>

🗒️ <a href="#4">4. 테스트케이스 </a>

👾 <a href="#5">5. 기술 스택 </a>

🐞 <a href="#6">6. 트러블슈팅 </a>

🧑‍💻 <a href="#7">7. 팀원 회고 </a>

<br>


## <p id="1"> 📑 1. 프로젝트 기획</p>


### <p id="1-1">1-1. 주제</p>
트립버디는 실시간 공동 작업 및 투표 기능을 활용한 **협업 기반 여행 계획 서비스**입니다. 
<br><br>
사용자는 그룹을 생성하여 친구를 초대하고, 그룹에서 여행 일정과 가고 싶은 장소를 토의하며 날짜·장소·예산 등을 투표를 통해 결정할 수 있습니다. 또한, 비용 정산 기능과 사진 공유 앨범을 활용하여 여행 계획을 체계적으로 관리할 수 있으며, 캘린더를 통해 모든 여행 일정을 한눈에 확인하고 기록할 수 있는 편리한 기능을 제공합니다.
<br><br>
### <p id="1-2">1-2. 배경 및 필요성</p>
#### [ 국내 관광 시장 규모의 성장 ]
<img src="https://github.com/user-attachments/assets/269e3016-154c-44a1-b4c4-95a7e7520968" width="600px"/> <br>
코로나19 팬데믹이 종식되고 억눌렸던 여행 수요가 폭발적으로 증가하면서 관광업, 항공업, 숙박업 등 다양한 분야에서 활발한 성장이 이루어지고 있습니다. 2022년에는 국내 관광 시장 규모는 14조 900억 원으로, 2019년 대비 97% 수준으로 회복되었습니다. 더 나아가 2027년에는 19조 6,900억 원 시장 규모를 형성할 것으로 전망됩니다. 

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
<img width="1001" alt="image" src="https://github.com/user-attachments/assets/3b57cf77-31ea-4801-9f1a-fc4dcafe2e5c" />
<br><br>

### <p id="1-5">1-5. 요구사항 명세서</p>
<a href="https://docs.google.com/spreadsheets/d/1g5JGdYRIqlfTwxo8pWvn_RjXfj637lqHXj-BadZo7cY/edit?gid=1875085029#gid=1875085029">요구사항 명세서</a>
![요구사항 명세서](https://github.com/user-attachments/assets/26c892a0-9ac2-4d60-bce0-e6bcd6eaf763)

### <p id="1-6">1-6. UML</p>
<details>
<summary>UML</summary>
<div markdown="1">
  <img src="https://github.com/user-attachments/assets/4602be7a-f881-40e4-9851-305c59b52de8"/>  
</div>
</details>
<br><br>

##  <p id="2"> 🗃️ 2. DB모델링</p>


### <p id="2-1">2-1. 논리 모델링</p>
![논리 모델](https://github.com/user-attachments/assets/ec1d504a-648d-44dc-a92a-577e6598d8ef)


### <p id="2-2">2-2. 물리 모델링</p>
![물리 모델](https://github.com/user-attachments/assets/680993b9-5395-4080-9988-1883ee5269c3)

<br><br>
##  <p id="3"> 🛠️ 3. 서버 구축</p>
### <p id="3-1">3-1. MariaDB 리플리케이션</p>
![레플리케이션](https://github.com/user-attachments/assets/a25a4ee2-7125-4b71-b017-ce93bad93e30)
- DB 서버의 부하를 분산시키고 데이터를 백업하기 위해 Master-Slave 구조로 DB서버 구축 진행
- MariaDB에서 제공하는 리플리케이션(DB 복제) 기능을 사용 
- 2대의 리눅스 VM 내에 설치한 mariaDB를 master(1번)와 slave(2번)로 나누어 비동기 복제 방식으로 데이터를 복제하도록 함
- Master-Slave 구조
  - master 서버: 데이터의 변경에 대한 처리를 담당하며 변경 발생시 binary log에 기록한다. 
  - slave 서버: master 서버에 접근하여 binary log를 전달받고 이를 slave DB에 반영하고 조회의 부담을 담당한다.
  - 단, slave 서버는 master의 데이터를 전달받아 백업하는 용도이므로 readonly 설정을 하여 데이터 변경이 불가능하도록 한다. 
<br>

### <p id="3-2">3-2. DDL</p>
[DDL](https://github.com/beebuddy1/be15-1st-beebuddy-tripbuddy/blob/a1ba4df29c8ee8648c906ceb246ab0a3a9b5330f/src/ddl/ddl.sql)

<br><br>
## <p id="4"> 🗒️ 4. 테스트케이스 </p>
[테스트케이스](https://docs.google.com/spreadsheets/d/1g5JGdYRIqlfTwxo8pWvn_RjXfj637lqHXj-BadZo7cY/edit?gid=2127407408#gid=2127407408)  

![beebuddy 테스트 케이스_1](https://github.com/user-attachments/assets/3be5a832-6ebc-435e-a2f5-ec61ec8f4dad)
![beebuddy 테스트 케이스_2](https://github.com/user-attachments/assets/55f2fcda-e293-48a3-93bc-841672c053e4)


<br><br>
## <p id="5"> 👾 5. 기술 스택 </p>
<div dir="auto">
<img src="https://img.shields.io/badge/mariaDB-003545?style=for-the-badge&logo=mariaDB&logoColor=white">
<img src="https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white">
<img src="https://img.shields.io/badge/vscode-000000?style=for-the-badge&logo=vsco&logoColor=white">
<img src="https://img.shields.io/badge/Sourcetree-0052CC?style=for-the-badge&logo=sourcetree&logoColor=white">
<img src="https://img.shields.io/badge/HeidiSQL-25D366?style=for-the-badge&logoColor=white">
</div>
<div dir="auto">
<img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white">
<img src="https://img.shields.io/badge/git-F05032?style=for-the-badge&logo=git&logoColor=white">
<img src="https://img.shields.io/badge/ERD CLOUD-339AF0?style=for-the-badge&logoColor=white">
<img src="https://img.shields.io/badge/StarUML-3D03A7?style=for-the-badge&logoColor=white">
<img src="https://img.shields.io/badge/Notion-000000?style=for-the-badge&logo=notion&logoColor=white">
</div>

<br><br>

##  <p id="6"> 🐞 6. 트러블슈팅</p>

### 6-1. PK 지정 전 AUTO_INCREMENT Error
#### 1️⃣ 에러 발생 코드
``` sql
 CREATE TABLE `tbl_member` (
  `member_id`  INT NOT NULL AUTO_INCREMENT, -- ⚠️ 에러 발생
  `email`  CHAR(30)  NOT NULL  COMMENT '로그인 ID'
);

ALTER TABLE `tbl_member` ADD CONSTRAINT `PK_TBL_MEMBER` PRIMARY KEY (
  `member_id`
);
```
 #### 2️⃣ SQL 에러 코드
 > SQL 오류 (1075): **Incorrect table definition**; 
    there can be only one auto column and it must be defined as a key 

#### 3️⃣ 발생 원인 
-  ##### <span style="background-color:fff5b1;">one auto column and it must be defined as a key </span>
- ##### `AUTO_INCREMENT` 를 적용할 컬럼은 KEY로 지정된 상태여야 한다.

#### 4️⃣ 해결 방법 
##### 1. PK를 인라인 방식으로 통일한다.
``` sql
CREATE TABLE `tbl_member` (
`member_id`   INT NOT NULL AUTO_INCREMENT PRIMARY KEY, -- 인라인 방식으로 해결
`email`   CHAR(30)   NOT NULL   COMMENT '로그인 ID',
);
```
##### 2. ALTER 문으로 통일한다. 
``` sql
CREATE TABLE `tbl_member` (
`member_id`   INT NOT NULL AUTO_INCREMENT PRIMARY KEY, -- 인라인 방식으로 해결
`email`   CHAR(30)   NOT NULL   COMMENT '로그인 ID',
);

# ALTER문으로 AUTO_INCREMENT, PRIMARY KEY 지정
ALTER TABLE `tbl_member` MODIFY member_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY;
```

<br>

### 6-2. ALTER로 ON UPDATE CASCADE ON DELETE CASCADE 지정 Error
#### 1️⃣ 에러 발생 코드
``` sql
ALTER TABLE `tbl_group_member` ADD CONSTRAINT `FK_tbl_group_TO_tbl_group_member_1` 
FOREIGN KEY (
   `group_id`
)
REFERENCES `tbl_group` (
   `group_id` ON UPDATE CASCADE ON DELETE CASCADE
) ;
```
 #### 2️⃣ SQL 에러 코드
 > SQL 오류 (1064): **You have an error in your SQL syntax**; 
check the menual that corresponds to your MariaDB server version for the right syntax
to use near 'ON UPDATE CASCADE ON DELETE CASCADE)' 

#### 3️⃣ 발생 원인 
-  ##### <span style="background-color:fff5b1;">check the menual that corresponds to your MariaDB server version for the right syntax to use near 'ON UPDATE CASCADE ON DELETE CASCADE)’ </span>
-  ##### `ALTER`로 `ON UPDATE CASCADE ON DELETE CASCADE`  와 같은 CSCADE 옵션 지정 시 참조 컬럼의 괄호 밖에 명시해주어야 한다. 

#### 4️⃣ 해결 방법 
##### 1. CASCADE 옵션을 참조 컬럼 괄호 밖에 명시한다.
``` sql
ALTER TABLE `tbl_group_member` ADD CONSTRAINT `FK_tbl_group_TO_tbl_group_member_1` 
FOREIGN KEY (
   `group_id`
)
REFERENCES `tbl_group` (
   `group_id`   
) ON UPDATE CASCADE ON DELETE CASCADE ;
```

<br>

### 6-3. TRIGGER AFTER DELETE 옵션 NEW 사용 불가
#### 1️⃣ 에러 발생 코드
``` sql
DELIMITER ;
-- 비용 삭제 트리거
CREATE OR REPLACE TRIGGER after_delete_cost
   AFTER DELETE
   ON tbl_cost
   FOR EACH ROW
BEGIN
   INSERT INTO
      tbl_cost_history
   (
      history_type
      , updated_at
      , cost_amount
      , cost_id
   )
   VALUES
   (
      'DELETED'
      , NEW.created_at -- ⚠️ ON DELETE 옵션에서 NEW 사용하여 문제 발생
      , NEW.cost_amount
      , NULL -- cost_id null로 바꿔줌!
   );   
END //

DELIMITER ;
```
 #### 2️⃣ SQL 에러 코드
 > SQL 오류 (1363): There is no NEW row in on DELETE trigger' 

#### 3️⃣ 발생 원인 
-  ##### `TRIGGER` ~ `[AFTER/BEFORE] DELETE` 옵션에서 `NEW` 사용
-  ##### `DELETE` 옵션은 추가 데이터가 없어 `NEW` 사용 불가

#### 4️⃣ 해결 방법 
##### 1.  `NEW`를 제외하고 작성한다.
``` sql
DELIMITER ;
-- 비용 삭제 트리거
CREATE OR REPLACE TRIGGER after_delete_cost
   AFTER DELETE
   ON tbl_cost
   FOR EACH ROW
BEGIN
   INSERT INTO
      tbl_cost_history
   (
      history_type
      , updated_at
      , cost_amount
      , cost_id
   )
   VALUES
   (
      'DELETED'
      , created_at
      , cost_amount
      , NULL -- cost_id null로 바꿔줌!
   );
END //

DELIMITER ;
```

<br>

### 6-4. Organization Repository에 push시 Permission 에러
#### 1️⃣ 에러 발생 상황
- ##### Organization Repository를 Local에 `clone` 한 후 `branch` 생성
- ##### 생성한 `branch`에서 파일을 수정하여 `commit` 하고 원격에 `push`

#### 2️⃣ 에러 코드
 > $ git push origin feat/vote   
→ **Permission** to beebuddy1/be15-1st-beebuddy-tripbuddy.git **denied** to hnjee.
fatal: unable to access 'https://github.com/beebuddy1/be15-1st-beebuddy-tripbuddy.git/': The requested URL returned error: 403

#### 3️⃣ 발생 원인
- ##### 케이스1: GitHub Repository에 권한이 문제
  ##### repository 권한 부재 또는 `Branch protection rules`에 `Require pull request before merging` 옵션 설정
- ##### 케이스2: GitHub 계정 오류
- ##### 케이스3: 현재 로컬에 연결된 GitHub 인증 정보 오류 -> 당시 에러 발생 원인 
  ##### ✔️ GitHub 계정 인증 정보가 갱신되지 않아서 이전의 권한 정보만 유효함  

#### 4️⃣ 해결 방법 
##### 1. 기존에 저장된 GitHub 자격증명을 삭제
##### ✔️ 로컬 컴퓨터 윈도우-사용자계정-자격증명 관리자에서  기존의 깃허브와 관련된 자격증명 모두 삭제
![permission_error](https://github.com/user-attachments/assets/03200652-9cdd-4904-b218-2b752c02e6be)
##### 2. PUSH 할 때 다시 로컬과 GitHub 연결 
<br>

### 6-5. 레플리카 서버 구축 시 테이블 생성 오류
#### 1️⃣ 에러 발생 상황
``` sql
 CREATE TABLE `tbl_member` (
  `member_id`  INT  NOT  NULL  AUTO_INCREMENT, 
  `email`   CHAR(30)   NOT  NULL   COMMENT  '로그인 ID'
);
```

#### 2️⃣ SQL 에러 코드
 > 프로젝트 테이블 생성을 위한 DDL 스크립트를 읽혔으나 테이블이 정상적으로 생성되지 않아 doesn't exist 에러 발생 
![replica_error](https://github.com/user-attachments/assets/89782cdb-a491-414a-828b-8ffca925d4b2)


#### 3️⃣ 발생 원인 
- ##### 리눅스 환경에서 위의 SQL 코드의 Tab 처리를 인식하지 못하여 공백이 없는 채로 명령어를 읽음 (예시: CHAR(30)NOT NULL)

#### 4️⃣ 해결 방법 
##### 1. `TAB` 을 `space_bar`로 공백 설정하여 스크립트를 수정한다. 
``` sql
 CREATE TABLE `tbl_member` (
  `member_id`  INT NOT NULL AUTO_INCREMENT, -- ⚠️ 에러 발생
  `email`  CHAR(30)  NOT NULL  COMMENT '로그인 ID'
);

ALTER TABLE `tbl_member` ADD CONSTRAINT `PK_TBL_MEMBER` PRIMARY KEY (
  `member_id`
);
```
![replica_success](https://github.com/user-attachments/assets/298c01d4-878c-45d4-9803-51eb4aa5dce2)

<br>

### 6-6. MariaDB doesn’t support variable for offset
#### 1️⃣ 에러 발생 상황
``` sql
SET @room_id = 10;
set @page = 1;
SET @offset = (@page - 1) * 12;
SELECT
    gal.file_id,
    gal.file_name,
    gal.file_path,
    gal.created_at,
    gal.is_deleted,
    gal.room_id
FROM
    tbl_gallery gal
WHERE
    gal.room_id = @room_id
    AND gal.is_deleted = 'N'
ORDER BY
    gal.created_at DESC
LIMIT 12 OFFSET @offset;
```

 #### 2️⃣ SQL 에러 코드
``` sql
Error: (conn:57, no: 1064, SQLState: 42000) You have an error in your SQL syntax;
check the manual that corresponds to your MariaDB server version for the right syntax 
to use near '@offset' at line 15 sql: SELECT gal.file_id, gal.file_name, gal.file_path,
gal.created_at, gal.is_deleted, gal.room_id FROM tbl_gallery gal WHERE gal.room_id =
@room_id AND gal.is_deleted = 'N' ORDER BY gal.created_at DESC L... - parameters:[]   
```

#### 3️⃣ 발생 원인 
- ##### 갤러리의 한 페이지당 12개의 사진을 보여주기 위해서 @page를 입력 받고 @offset을 계산하여 OFFSET에 추가함.
- ##### ❗ mariaDB에서는 OFFSET에 변수를 허용하지 않음.

#### 4️⃣ 해결 방법 
##### 1. PREPARE 문을 사용한다.
``` sql
SET @room_id = 10;
SET @page = 1;
SET @offset = (@page - 1) * 12;
-- @sql_query라는 변수에 실행시키고자 했던 SQL 문을 문자열 형태로 저장
SET @sql_query = CONCAT(
    'SELECT file_id, file_name, file_path, created_at, is_deleted, room_id ',
    'FROM tbl_gallery ',
    'WHERE room_id = ', @room_id,
    ' AND is_deleted = ''N'' ',
    'ORDER BY created_at DESC ',
    'LIMIT 12 OFFSET ', @offset
);
-- PREPARE 문으로 @sql_query를 불러오고, EXCUTE로 실행.
PREPARE stmt FROM @sql_query;
EXECUTE stmt;
-- DEALLOCATE PREPARE로 사용이 끝난 SQL을 삭제하여 메모리 정리.
DEALLOCATE PREPARE stmt;
```

<br><br>



##  <p id="7"> 🧑‍💻 7. 팀원 회고</p>
| 이름 | 내용 |
| --- | --- |
| 곽진웅 | 처음으로 해보는 개발 프로젝트라 어떻게 해야 할 지 막막하기도 하고 어려움이 많았는데 좋은 팀원들 만난 덕분에 많이 배우며 무사히 마무리할 수 있었습니다. 그럴 수 없는 거 알지만 팀 매칭 이후 며칠 지내보고 이 팀으로 6개월 쭉 갔으면 좋겠다고 생각했는데, 프로젝트 진행해보니 역시 제 예감이 틀리지 않았네요. 부트캠프 일정 소화하기도 쉽지 않은데 수업 끝나고 남아서 프로젝트 준비하느라 다들 고생 많았습니다. 좋은 개발자로 성장해있을 팀원들의 모습이 기대가 됩니다. |
| 김소원 | 처음 팀을 꾸릴 때 많이 긴장했었는데, 좋은 팀원들의 선택으로 프로젝트 여정의 시작부터 마무리까지 즐겁게 해낼 수 있었습니다.  데이터베이스 구축을 목표로 하는 프로젝트는 처음이었는데,  구체적인 프론트 목업 없이 작업하는 것이 쉽지 않은 일이라고 생각했습니다. 기획 단계를 거치면서 초기에 구상했던 기능의 일부는 구현하지 못한 아쉬움이 남습니다. 하지만 프로젝트를 진행하며 어려운 부분을 서로 미루지 않는 모습에 팀원들 모두가 우리가 설계한 플랫폼의 목적인 ‘협업’이라는 단어에 어울리는 사람이라고 생각했습니다. 팀원들 모두에게 이번 프로젝트가 개발자로서 앞으로 나아갈 수 있는 힘이 되었으면 좋겠습니다. |
| 오유경 | 데이터베이스 구축을 이렇게 오랫동안, 꼼꼼하게 한 적이 처음이라 구체적으로 들어갈 수록 조금 어려울 때도 있었지만, 좋은 팀원들을 만나 서로 도움을 주고 받으면서 잘 해결해 나아갔던 것 같습니다. 특히, 데이터 정규화 과정에서 중복을 최소화하고 효율적인 쿼리를 작성하는 방법을 고민하면서 많은 것을 배울 수 있었습니다. 또한, 예상하지 못했던 문제들이 발생했을 때, 팀원들과 함께 원인을 분석하고 해결책을 모색하는 과정에서 협업의 중요성을 다시 한번 실감했습니다. 이번 프로젝트를 통해 단순히 데이터베이스를 구축하는 것뿐만 아니라, 유지보수와 확장성을 고려한 설계를 하는 것이 얼마나 중요한지 깨달았습니다. 앞으로도 이런 경험들을 통해 좋은 개발자가 되고 싶습니다. |
| 이현지 | 이번 프로젝트를 통해 기획부터 DB구축, SQL문 쿼리 작성, 테스트, 산출물 문서화 작업 모두 빠르게 경험해볼 수 있었습니다. 데이터베이스 모델링을 개념으로만 접해 막연하다고 느끼던 차에, 팀원들과 정규화 및 유지보수, 확장성 측면까지 고려하며 실제 DB를 설계를 해볼 수 있어 좋았습니다. 한정된 시간이라 최적화적인 측면까지 고민하지 못한 것이 아쉽지만 다음에는 WBS를 좀더 활용하여 우선순위 관리를 잘해야겠다고 생각했습니다. 저에게 가장 즐거웠던 것은 팀원 모두가 부끄러움이나 두려움 없이 자신의 생각을 자유롭게 이야기하고 이를 조율해나간 과정들입니다. 결과 자체도 중요하지만 현재는 배우는 입장이기 때문에 열린 마음으로 해결 방안을 토의해보는 것이 중요하다고 생각하는데, 이러한 과정을 함께할 수 있는 좋은 팀원들을 만난 것이 다행이라고 생각했습니다.   |
| 조현승 | 프로젝트를 진행하면서 처음부터 데이터베이스 설계를 경험할 수 있어 좋은 기회였습니다. 단순히 학습하는 것에 그치지 않고, 프로시저와 트리거를 실제로 적용해 보면서 데이터베이스의 다양한 기능을 활용하는 법을 익힐 수 있었습니다. 다만, 댓글과 그룹원 조회 등에 대한 인덱싱을 적용하지 못한 점은 아쉬움으로 남습니다. 데이터 최적화 측면에서 더 깊이 고민해볼 필요가 있다고 느꼈습니다. 팀원들이 각자의 역할을 맡아 열심히 노력해 주었고, 함께 협력하며 프로젝트를 진행한 덕분에 많은 것을 배울 수 있었습니다. |
| 한성경 | 단순하고 간결한 모델과 단순하진 않지만 가독성이 좋은 모델 중 어떤 것이 좋은 모델인지, 특정 컬럼에 여러 데이터 타입이 허용될 때 어떤 타입을 선택해야 하는지 등 작업의 우선순위에 따라 최적의 선택이 바뀔 수 있는 요소들을 다함께 고려하는 과정이 좋았습니다.  또한 WBS로 작업 설계, 요구사항 명세서로 서비스 구체화, UML로 시스템의 동작 설계, 데이터베이스모델링과 서버 구축으로 실질적인 데이터 구현 등 안정적이고 체계적인 서비스 운영 사이클을 겪을 수 있었습니다.  기존에는 추상적이었던 데이터베이스라는 개념이, 소프트웨어에서 어떤 역할을 수행하고 어떤 영향을 미치는지 직접 경험할 수 있었습니다. |

