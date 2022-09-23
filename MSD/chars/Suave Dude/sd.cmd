;------------------------------------------------------------------------------
;-| �{�^�����}�b�v�i�{�^���R���t�B�O�j|---------------------------------------- ��P��

[Remap]
x = x      ;�w�{�^���̓��͔�������ۂɉ����{�^���Ɋ��蓖�Ă�B
y = y      ;�x�{�^���@�@�@�@�@�@�@�@�@�V
z = z      ;�y�{�^���@�@�@�@�@�@�@�@�@�V
a = a      ;�`�{�^���@�@�@�@�@�@�@�@�@�V
b = b      ;�a�{�^���@�@�@�@�@�@�@�@�@�V
c = c      ;�b�{�^���@�@�@�@�@�@�@�@�@�V
s = s      ;�X�^�[�g�{�^���@�@�@�@�@�@�V

;------------------------------------------------------------------------------
;-| �f�t�H���g�ݒ� |----------------------------------------------------------- ��Q��

[Defaults]
command.time = 15  ;�W���̃R�}���h���͎�t���ԁB
                   ;�e�R�}���h�ŏȗ����Ă���ꍇ�ɗL���B
                   ;���̃p�����[�^���������ꍇ�A�f�t�H���g�͂P�t���[���ɂȂ�B
                   ;�i�@M.U.G.E.N�ł̂P�t���[���@���@�P�^�U�O�b�@�j

command.buffer.time = 1  ;�W���̃R�}���h���͋L�����ԁB
                         ;���͂�������ɃR�}���h���L�����A
                         ;�w�𗣂��Ă��R�}���h���������Ă����Ԃ�
                         ;�����Őݒ肵�����Ԃ̕��ێ�����B
                         ;�P�`�R�O�t���[���܂ł̊ԂŐݒ�\�B
                         ;�f�t�H���g�͂P�t���[���B

;============================================================================== ��R��
; �R�}���h��`�p�[�g�i���̓L�[��ݒ肷��j
;==============================================================================

;-| AI Related |-----------------------------------------------------------

[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742


;-| ���K�E�Z |-----------------------------------------------------------------
;------------------------------------------------------------------------------

;�����O�������Ȃ�΁A�Ⴄ�R�}���h�ł������X�e�[�g�̋Z���o�������\�B

[Command]
name = "TripleDudeKick"
command = ~D, DF, F, D, DF, F, a
time = 20

[Command]
name = "TripleDudeKick"
command = ~D, DF, F, D, DF, F, b
time = 20

[Command]
name = "SmashDudeSlash"
command = ~D, DB, B, D, DB, B, a
time = 20

[Command]
name = "SmashDudeSlash"
command = ~D, DB, B, D, DB, B, b
time = 20


;------------------------------------------------------------------------------
;-| �K�E�Z |-------------------------------------------------------------------

[Command]
name = "upper_a"
command = ~F, D, DF, a

[Command]
name = "upper_b"
command = ~F, D, DF, b

[Command]
name = "upper_ab"
command = ~F, D, DF, a+b

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_ab"
command = ~D, DB, B, a+b

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

;------------------------------------------------------------------------------
;-| �L�[�Q��A������ |---------------------------------------------------------

[Command]
name = "FF"       ;�K�{�R�}���h��
command = F, F
time = 10

[Command]
name = "BB"       ;�K�{�R�}���h��
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| �������� |-----------------------------------------------------------------

[Command]
name = "recovery" ;�K�{�R�}���h��
command = x+y
time = 1

;------------------------------------------------------------------------------
;-| �����L�[�{�{�^�� |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;------------------------------------------------------------------------------
;-| �{�^���P�� |---------------------------------------------------------------

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;------------------------------------------------------------------------------
;-| �����L�[ |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ;�K�{�R�}���h��
command = /$F
time = 1

[Command]
name = "holdback"  ;�K�{�R�}���h��
command = /$B
time = 1

[Command]
name = "holdup"    ;�K�{�R�}���h��
command = /$U
time = 1

[Command]
name = "holddown"  ;�K�{�R�}���h��
command = /$D
time = 1

;============================================================================== ��S��
; �X�e�[�g�G���g���[�p�[�g�i�Z�Ȃǂ��o����悤�ɂ��邽�߂̏�����ݒ�j
;==============================================================================

[Statedef -1]


[State -1]
Type=Changestate
Triggerall=Inguarddist ; Guard when in guard distance
Triggerall=var(58)>0 ; and the AI is on
Triggerall=ctrl ; and we have control
Trigger1 = random<800 ; chance is a bit higher than for attacking, but not too much. There still is a chance for missing a guard even on difficulty level 7. Only the maximum level is guarding perfectly.
value=120

[State -1] ; The engine will still guard by through pressing the back button, we need to disable that.
Type=Assertspecial
Triggerall=StateNo!=[120,160]
Trigger1=var(58)>0
flag=noairguard
flag2=nocrouchguard
flag3=nostandguard

; =============================
;  MOVES
; =============================

[State -1, AI Backwards Jump]
type = ChangeState
value = 105
triggerall = var(58)>0
triggerall = ctrl
triggerall = stateno != [100,105]
triggerall = stateno != [40,55]
trigger1 = statetype = S
trigger1 = p2dist X<=80
trigger1 = p2stateno = [5100,5110]
trigger1 = backedgebodydist>20
trigger2 = p2dist X<=80
trigger2 = p2statetype = C
trigger2 = enemy,backedgebodydist<=20
trigger2 = p2stateno != [5000,5110]

[State -1, AI Strong Kung Fu Upper]
type = ChangeState
value = 1010
triggerall = var(58)>0
triggerall = statetype != A
triggerall = ctrl
triggerall = enemy,vel Y>=0
triggerall = p2statetype = A
triggerall = p2movetype != H
triggerall = p2movetype != A
trigger1 = enemy,vel X=0
trigger1 = p2dist X = [0,55]
trigger2 = enemy,vel X>=0
trigger2 = p2dist X = [20,160]
trigger1 = random>300

[State -1 SPAMPUNCH]
type = ChangeState
triggerall = var(58)>0
triggerall = Statetype = S || Statetype = C
trigger1 = 0
trigger1 = ctrl || ((stateno = 200||stateno = 400) && time>4)
trigger1 = p2bodydist X>80
trigger1 = (enemy,vel x<=0 && p2bodydist X>80)|| enemy,movetype = H
trigger1 = enemy,movetype != A
trigger1 = enemy,numproj<=0
trigger2 = p2stateno != [5100,5150]
trigger2 = p2dist X<50
trigger2 = p2statetype = S
trigger2 = random>800
trigger2 = ctrl
value = 200+230*(random>800 || enemy,backedgebodydist<20 && random>500)


[State -1 PUNCH]
type = ChangeState
triggerall = var(58)>0
triggerall = Statetype = S
trigger1 = ctrl
trigger1 = p2bodydist X<32 || (P2Statetype = C && p2bodydist X<50)
;trigger1 = enemy,movetype = H
trigger1 = p2stateno != [5100,5150]
trigger1 = enemy,movetype != A
value = 200+230*((random>800 && p2statetype != C) || p2statetype = C)

[State -1, AI Kung Fu Throw]
type = ChangeState
value = 800
triggerall = var(58)>0
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = random>800
triggerall = p2stateno != [5100,5110]
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, AI Crouching Light Kick]
type = ChangeState
triggerall = var(58)>0
value = 430+10*(!movecontact || p2bodydist X>30)
trigger1 = (stateno = 400) || (stateno = 430)
trigger1 = (time > 9) || (movecontact && time > 5)

[State -1, AI Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(58)>0
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist X<=55
trigger1 = p2statetype = S
trigger1 = p2stateno = [200,250]
trigger1 = p2movetype = A
trigger2 = stateno = 230
trigger2 = movecontact
trigger2 = time>4

[State -1, Crouching Med Kick]
type = ChangeState
value = 440
triggerall = var(58)>0
triggerall = stateno = 200 || stateno = 400
triggerall = time>4
trigger1 = enemy,vel x>0
trigger1 = p2dist X<110
trigger1 = p2statetype = S || p2movetype = A
trigger1 = random>800

[State -1, AI]
type = ChangeState
value = 3050
trigger1 = var(58)>0
trigger1 = power>=1000
trigger1 = p2dist x<45
trigger1 = p2dist x>-45
trigger1 = p2stateno != [5100,5150]
trigger1 = stateno = 430
trigger1 = movehit

[State -1, AI Run Fwd]
type = ChangeState
value = 102
triggerall = !win
triggerall = p2stateno != [1025,1028]
triggerall = statetype = S
trigger1 = stateno != 102
trigger1 = var(58)>0
trigger1 = ctrl
trigger1 = p2dist X>160

[State -1, AI]
type = ChangeState
value = 3050
trigger1 = var(58)>0
trigger1 = p2dist x<45
trigger1 = p2dist x>-45
trigger1 = power>=1000
trigger1 = stateno = 210 
trigger1 = movehit

[State -1, AI]
type = ChangeState
value = 1000
trigger1 = var(58)>0
trigger1 = p2dist x<75
trigger1 = stateno = 210
trigger1 = movehit

[State -1, AI]
type = ChangeState
value = 1010
trigger1 = var(58)>0
trigger1 = stateno = 240
trigger1 = movehit

[State -1, AI Stand Light Kick]
type = ChangeState
value = 230+(200*p2statetype = C)
triggerall = var(58)>0
triggerall = statetype = S
trigger1 = (stateno = 200) && time > 7
trigger1 = movehit
trigger1 = p2dist X = [0,30]
trigger2 = p2stateno != [5100,5150]
trigger2 = p2stateno != 1028
trigger2 = ctrl
trigger2 = statetype = S
trigger2 = p2dist X = [0,30]
trigger2 = random>500

[State -1, AI Stand Strong Kick]
type = ChangeState
value = 240
triggerall = var(58)>0
triggerall = p2dist X<55
trigger1 = (stateno = 230) && time > 5
trigger1 = movehit
trigger2 = (stateno = 200 || stateno = 400) && time > 4
trigger2 = movehit
trigger2 = p2stateno != [5100,5150]
trigger2 = p2dist X = [0,55]

[State -1, AI Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(58)>0
triggerall = statetype = A
trigger1 = p2statetype = S
trigger1 = vel Y>0
trigger1 = ctrl
trigger1 = p2dist Y>20
trigger1 = p2dist X = [0,40]
trigger2 = vel Y>0
trigger2 = command = "a"
trigger2 = ctrl
trigger3 = p2statetype = A
trigger3 = p2dist X = [0,50]
trigger3 = ctrl

[State -1, AI Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(58)>0
triggerall = statetype = A
triggerall = p2dist X<80
trigger1 = ctrl
trigger1 = p2statetype = C || p2statetype = S
trigger1 = vel Y>0
trigger1 = pos Y>-65
trigger2 = stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = ctrl
trigger3 = p2statetype = A

[State -1, ���c�E�\�o�b�g]
type = ChangeState
value = 1060
triggerall = var(58)>0
triggerall = statetype = A
triggerall = p2statetype = A
trigger1 = stateno = [630,640] ;jump_x or jump_a
trigger1 = movecontact


[State -1, �R�c�E�L�b�N];�Q�[�W���x���P
type = ChangeState
value = 3000
triggerall = var(58)>0
triggerall = var(8) ; My somersault kick hit
triggerall = power >= 1000
trigger1 = p2dist x>-45
trigger1 = stateno = 1005
trigger1 = prevstateno = 1011
;---------------------------------------------------------------------------
[State -1, AI Jump]
type = ChangeState
value = 40
triggerall = var(58)>0
triggerall = ctrl || stateno = 102
triggerall = p2movetype != H
triggerall = stateno != [40,55]
triggerall = statetype = S
trigger1 = p2dist X = [110,120]
trigger1 = stateno != [100,102]
trigger2 = p2dist X = [120,140]
trigger2 = stateno = [100,102]
trigger3 = enemy,numproj>0
trigger3 = p2dist X = [80,360]
trigger4 = p2movetype = A
trigger4 = enemy,hitdefattr = SCA,HT
trigger4 = p2dist X = [0,100]
trigger4 = enemy,vel X>0


;---------------------------------------------------------------------------
; Kick 'em when they're down

[State -1, AI Run Special]
type = ChangeState
value = 10000+(p2dist X<=90)
triggerall = var(58)>0
triggerall = !win
triggerall = statetype != A
trigger1 = ctrl
trigger1 = p2stateno = [5100,5110]
trigger1 = p2movetype = H
trigger1 = var(3)<=0

[State -1, Kick 'em?]
type = VarSet
triggerall = var(58)>0
trigger1 = prevstateno = 10001
trigger1 = stateno = 440
trigger1 = p2stateno = [5100,5110]
var(3) = 1

[State -1, Kick 'em?]
type = VarSet
triggerall = var(58)>0
trigger1 = p2movetype != H
var(3) = 0

; =============================
;  MOVES
; =============================


[State -1, �X�}�b�V���J���t�[�A�b�p�[];�Q�[�W���x���P
type = ChangeState
value = 3050
triggerall = var(58)<=0
triggerall = command = "SmashDudeSlash"
triggerall = var(59)!=1
triggerall = power >= 1000 
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA 
trigger2 = stateno != [3050,3100)
trigger2 = movecontact
trigger3 = stateno = 1005
trigger4 = stateno = 3005
trigger5 = stateno = 3010

[State -1, �R�c�E�L�b�N];�Q�[�W���x���P
type = ChangeState
value = 3000
triggerall = var(58)<=0
triggerall = command = "TripleDudeKick"
triggerall = var(59)!=1
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
trigger3 = stateno = 1005
;------------------------------------------------------------------------------

[State -1, �����c�E�X���b�V��]
type = ChangeState
value = 1120
triggerall = var(58)<=0
triggerall = command = "upper_ab"
triggerall = var(59)!=1
triggerall = power >= 330
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440
trigger2 = movecontact

[State -1, ��c�E�X���b�V��]
type = ChangeState
value = 1100
triggerall = var(58)<=0
triggerall = command = "upper_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440
trigger2 = movecontact

[State -1, ���c�E�X���b�V��]
type = ChangeState
value = 1110
triggerall = var(58)<=0
triggerall = command = "upper_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440
trigger2 = movecontact

;------------------------------------------------------------------------------
[State -1, �����c�E�\�o�b�g]
type = ChangeState
value = 1070
triggerall = var(58)<=0
triggerall = command = "QCB_ab"
triggerall = var(59)!=1
triggerall = power >= 330
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,699]
trigger2 = movecontact

[State -1, ��c�E�\�o�b�g]
type = ChangeState
value = 1050
triggerall = var(58)<=0
triggerall = command = "QCB_a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,699]
trigger2 = movecontact

[State -1, ���c�E�\�o�b�g]
type = ChangeState
value = 1060
triggerall = var(58)<=0
triggerall = command = "QCB_b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,699]
trigger2 = movecontact

;------------------------------------------------------------------------------

[State -1, �����c�E�L�b�N]
type = ChangeState
value = 1020
triggerall = var(58)<=0
triggerall = command = "QCF_ab"
triggerall = var(59)!=1
triggerall = power >= 330
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440
trigger2 = movecontact

[State -1, ��c�E�L�b�N]
type = ChangeState
value = 1000
triggerall = var(58)<=0
triggerall = command = "QCF_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440
trigger2 = movecontact

[State -1, ���c�E�L�b�N]
type = ChangeState
value = 1010
triggerall = var(58)<=0
triggerall = command = "QCF_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440
trigger2 = movecontact

;------------------------------------------------------------------------------

[State -1, �Ԃ�����ڂ��ɏR��΂�];�����Z
type = ChangeState
value = 800
triggerall = var(58)<=0
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;------------------------------------------------------------------------------

[State -1, ������p���`]
type = ChangeState
triggerall = var(58)<=0
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 4

[State -1, �������p���`]
type = ChangeState
triggerall = var(58)<=0
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 4
trigger3 = (stateno = 230) && time > 6

[State -1, ������L�b�N]
type = ChangeState
triggerall = var(58)<=0
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 7

[State -1, �������L�b�N]
type = ChangeState
triggerall = var(58)<=0
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 4
trigger3 = (stateno = 230) && time > 5

;------------------------------------------------------------------------------

[State -1, ���Ⴊ�ݎ�p���`]
type = ChangeState
triggerall = var(58)<=0
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && time > 5
trigger3 = stateno = 430
trigger3 = (time > 7) || (movecontact && time > 5)

[State -1, ���Ⴊ�݋��p���`]
type = ChangeState
triggerall = var(58)<=0
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && time > 5

[State -1, ���Ⴊ�ݎ�L�b�N]
type = ChangeState
triggerall = var(58)<=0
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = stateno = 400
trigger3 = (time > 7) || (movecontact && time > 5)

[State -1, ���Ⴊ�݋��L�b�N]
type = ChangeState
triggerall = var(58)<=0
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = stateno = 400
trigger3 = (time > 7) || (movecontact && time > 5)

;------------------------------------------------------------------------------

[State -1, �W�����v��p���`]
type = ChangeState
triggerall = var(58)<=0
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, �W�����v���p���`]
type = ChangeState
triggerall = var(58)<=0
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

[State -1, �W�����v��L�b�N]
type = ChangeState
triggerall = var(58)<=0
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, �W�����v���L�b�N]
type = ChangeState
triggerall = var(58)<=0
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
;==============================================================================
; �ړ��֘A
;==============================================================================
;------------------------------------------------------------------------------

[State -1, ����]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, �o�b�N�X�e�b�v]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, ����]
type = ChangeState
value = 195
triggerall = var(58)<=0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl




[State -1, �{�X���[�h�i��������Ɠ��ځj] 
type = varset 
triggerall = var(59) = 0 
trigger1 = 1
var(59) = 0	;0�Œʏ�ŁA1�Ń{�X���[�h�ɁA2�ŏ펞�{�C���[�h
