.class public Lorg/codeaurora/ims/ImsCallSessionImpl;
.super Landroid/telephony/ims/internal/IImsCallSession$Stub;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;,
        Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    }
.end annotation


# static fields
.field private static final synthetic -org-codeaurora-ims-DriverCallIms$StateSwitchesValues:[I = null

.field private static final ALERT_HANDOVER:I = 0x1

.field private static final ALERT_TIMES_AFTER_DROP_CALL:I = 0x3

.field private static final EVENT_ACCEPT:I = 0x2

.field private static final EVENT_ADD_PARTICIPANT:I = 0x9

.field private static final EVENT_CLOSE_SESSION:I = 0xc

.field private static final EVENT_CONFERENCE:I = 0x6

.field private static final EVENT_DEFLECT:I = 0x8

.field private static final EVENT_DIAL:I = 0x1

.field private static final EVENT_HANGUP:I = 0x3

.field private static final EVENT_HOLD:I = 0x4

.field private static final EVENT_REJECT:I = 0x7

.field private static final EVENT_REMOVE_PARTICIPANT:I = 0xb

.field private static final EVENT_RESUME:I = 0x5

.field private static final EVENT_RINGBACK_TONE:I = 0xa

.field public static final PROPERTY_DBG_ENCRYPTION_OVERRIDE:Ljava/lang/String; = "persist.dbg.call_encrypt_ovr"

.field public static final PROPERTY_DBG_ENCRYPTION_OVERRIDE_DEFAULT:I = 0x0

.field private static final RESET_ALERT_HANDOVER_TIME:I = 0x2

.field private static final RESET_TIME:J = 0x1b7740L

.field public static final SUPP_NOTIFICATION_TYPE_MO:I = 0x0

.field public static final SUPP_NOTIFICATION_TYPE_MT:I = 0x1

.field public static final SUPP_SVC_CODE_INVALID:I = -0x1

.field public static final SUPP_SVC_CODE_MT_HOLD:I = 0x2

.field public static final SUPP_SVC_CODE_MT_RESUME:I = 0x3

.field private static final VOLUME_FOR_ALERT:I = 0x28


# instance fields
.field private mCallId:I

.field private mCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mCallee:Ljava/lang/String;

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

.field private mContext:Landroid/content/Context;

.field private mDc:Lorg/codeaurora/ims/DriverCallIms;

.field private mDisconnCause:I

.field private mHandler:Landroid/os/Handler;

.field private mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

.field private mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

.field mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

.field private mInCall:Z

.field private mIsCallTerminatedDueToLowBattery:Z

.field private final mIsCarrierOneSupported:Z

.field private mIsConfInProgress:Z

.field public mIsConferenceHostSession:Z

.field private mIsLowBattery:Z

.field private mIsVideoAllowed:Z

.field private mIsVoiceAllowed:Z

.field public mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mMtSuppSvcCode:I

.field private mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mRingbackToneRequest:Z

.field private mState:I

.field private mStateChangeReportingAllowed:Z

.field private mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

.field private mVoWifiQuality:I

.field private mWifiAlertHandler:Landroid/os/Handler;

.field private newSession:Lorg/codeaurora/ims/ImsCallSessionImpl;


# direct methods
.method static synthetic -get0(Lorg/codeaurora/ims/ImsCallSessionImpl;)Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method static synthetic -get1(Lorg/codeaurora/ims/ImsCallSessionImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/DriverCallIms;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    return-object v0
.end method

.method static synthetic -get3(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    return v0
.end method

.method private static synthetic -getorg-codeaurora-ims-DriverCallIms$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->-org-codeaurora-ims-DriverCallIms$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->-org-codeaurora-ims-DriverCallIms$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lorg/codeaurora/ims/DriverCallIms$State;->values()[Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->-org-codeaurora-ims-DriverCallIms$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lorg/codeaurora/ims/ImsCallSessionImpl;I)I
    .locals 0

    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    return p1
.end method

.method static synthetic -set1(Lorg/codeaurora/ims/ImsCallSessionImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    return p1
.end method

.method static synthetic -wrap0(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 1

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->doClose()V

    return-void
.end method

.method static synthetic -wrap2(Lorg/codeaurora/ims/ImsCallSessionImpl;Ljava/lang/String;Lorg/codeaurora/ims/ImsRilException;)V
    .locals 0
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "ex"    # Lorg/codeaurora/ims/ImsRilException;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeDisplaySuppServiceErrorMsg(Ljava/lang/String;Lorg/codeaurora/ims/ImsRilException;)V

    return-void
.end method

.method static synthetic -wrap3(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->startBeepForAlert()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/ImsServiceClassTracker;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "tracker"    # Lorg/codeaurora/ims/ImsServiceClassTracker;
    .param p4, "isVideoCapable"    # Z

    .prologue
    const/4 v4, 0x7

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 146
    invoke-direct {p0}, Landroid/telephony/ims/internal/IImsCallSession$Stub;-><init>()V

    .line 104
    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 105
    iput v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 107
    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v1, v0, v4}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 109
    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v1, v0, v4}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 111
    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v1}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 112
    new-instance v1, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 113
    iput v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 115
    new-instance v1, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 116
    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 117
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 118
    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->newSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 119
    iput v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    .line 120
    const/4 v1, -0x1

    iput v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mMtSuppSvcCode:I

    .line 121
    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    .line 122
    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    .line 123
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    .line 128
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    .line 129
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    .line 130
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    .line 132
    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 133
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    .line 134
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    .line 135
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCallTerminatedDueToLowBattery:Z

    .line 136
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    .line 137
    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mVoWifiQuality:I

    .line 138
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v1

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCarrierOneSupported:Z

    .line 148
    iput-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 149
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 150
    iput-object p3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 152
    if-nez p4, :cond_0

    .line 153
    const v1, 0x7f030005

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isConfigEnabled(I)Z

    move-result v0

    .line 154
    .local v0, "shallCreateVideoProvider":Z
    :cond_0
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeCreateVideoProvider(Z)V

    .line 155
    iput-boolean p4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/internal/IImsCallSessionListener;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;Z)V
    .locals 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "listener"    # Landroid/telephony/ims/internal/IImsCallSessionListener;
    .param p3, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "tracker"    # Lorg/codeaurora/ims/ImsServiceClassTracker;
    .param p6, "isVideoCapable"    # Z

    .prologue
    .line 180
    invoke-direct {p0, p4, p3, p5, p6}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/ImsServiceClassTracker;Z)V

    .line 182
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setListener(Landroid/telephony/ims/internal/IImsCallSessionListener;)V

    .line 183
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iput-object p2, v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/internal/IImsCallSessionListener;

    .line 184
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 185
    new-instance v0, Lorg/codeaurora/ims/parser/ConfInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/ConfInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    .line 186
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 179
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;Z)V
    .locals 1
    .param p1, "call"    # Lorg/codeaurora/ims/DriverCallIms;
    .param p2, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "tracker"    # Lorg/codeaurora/ims/ImsServiceClassTracker;
    .param p5, "isVideoCapable"    # Z

    .prologue
    .line 192
    invoke-direct {p0, p3, p2, p4, p5}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/ImsServiceClassTracker;Z)V

    .line 195
    new-instance v0, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v0, p1}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/DriverCallIms;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 196
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget v0, v0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 197
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 200
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 202
    new-instance v0, Lorg/codeaurora/ims/parser/ConfInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/ConfInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    .line 191
    return-void
.end method

.method private alertForHandoverFailed()V
    .locals 3

    .prologue
    .line 2283
    const-string/jumbo v1, "config_regional_wifi_calling_notificaion_enable"

    .line 2284
    const-string/jumbo v2, "com.android.settings"

    .line 2283
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getResBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2285
    .local v0, "shouldAlert":Z
    if-eqz v0, :cond_0

    .line 2286
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->startAlert()V

    .line 2280
    :cond_0
    return-void
.end method

.method private canDial(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 2
    .param p1, "details"    # Lorg/codeaurora/ims/CallDetails;

    .prologue
    const/4 v0, 0x1

    .line 1803
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isLowBattery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1804
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v1

    .line 1803
    if-nez v1, :cond_0

    .line 1805
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->isNotCsVideoCall(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1803
    :cond_0
    return v0
.end method

.method private doClose()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1064
    const-string/jumbo v0, "doClose!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1066
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isImsCallSessionAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    const-string/jumbo v0, "Received Session Close request while it is alive"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1070
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    if-eq v0, v4, :cond_3

    .line 1071
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    if-nez v0, :cond_4

    .line 1072
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    if-eqz v0, :cond_1

    .line 1073
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->dispose()V

    .line 1074
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 1079
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v0, v0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-eqz v0, :cond_2

    .line 1080
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 1082
    :cond_2
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifySessionClosed()V

    .line 1083
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 1084
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1086
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 1087
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 1088
    iput v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 1089
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1090
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1091
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1092
    iput v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 1093
    iput-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mInCall:Z

    .line 1094
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 1095
    iput-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 1096
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->newSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 1097
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    .line 1098
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    .line 1099
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1100
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    .line 1101
    iput-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    .line 1063
    :cond_3
    return-void

    .line 1077
    :cond_4
    const-string/jumbo v0, "Not clearing listener, ongoing merge."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1083
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 8
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1380
    if-nez p1, :cond_0

    .line 1381
    const-string/jumbo v4, "Null dcUpdate in extractCallDetailsIntoCallProfile"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1382
    return-void

    .line 1384
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 1394
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, v4, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 1395
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, v4, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_4

    .line 1396
    const/4 v1, 0x0

    .line 1397
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1398
    .local v2, "keyAndValue":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1400
    .local v3, "namespaceAndKey":[Ljava/lang/String;
    const/4 v0, 0x0

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keyAndValue":[Ljava/lang/String;
    .end local v3    # "namespaceAndKey":[Ljava/lang/String;
    .local v0, "i":I
    :goto_0
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, v4, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 1401
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, v4, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v4, v4, v0

    if-eqz v4, :cond_3

    .line 1402
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, v4, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1404
    .local v2, "keyAndValue":[Ljava/lang/String;
    aget-object v4, v2, v6

    if-eqz v4, :cond_2

    .line 1409
    aget-object v4, v2, v6

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1410
    aget-object v4, v2, v6

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1411
    .local v3, "namespaceAndKey":[Ljava/lang/String;
    aget-object v1, v3, v7

    .line 1426
    .end local v3    # "namespaceAndKey":[Ljava/lang/String;
    .local v1, "key":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    aget-object v5, v2, v7

    invoke-virtual {v4, v1, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1413
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    aget-object v1, v2, v6

    .restart local v1    # "key":Ljava/lang/String;
    goto :goto_1

    .line 1416
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "Bad extra string from lower layers!"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1417
    return-void

    .line 1420
    .end local v2    # "keyAndValue":[Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Element "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is null in CallDetails Extras!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1421
    return-void

    .line 1379
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method private extractHistoryInfoDetails(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "historyInfoString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1783
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1784
    .local v1, "historyInfoStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v3, "[\\r\\n]+"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1787
    .local v0, "historyInfoHops":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1788
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1789
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "extractHistoryInfoDetails :: historyInfoHops["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1790
    aget-object v4, v0, v2

    .line 1789
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1787
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1792
    :cond_0
    return-object v1
.end method

.method private extractProfileExtrasIntoCallDetails(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/CallDetails;)V
    .locals 8
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "details"    # Lorg/codeaurora/ims/CallDetails;

    .prologue
    .line 1817
    iget-object v6, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string/jumbo v7, "OemCallExtras"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1818
    .local v0, "callExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 1819
    const/4 v1, 0x0

    .line 1820
    .local v1, "extraString":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v6

    new-array v2, v6, [Ljava/lang/String;

    .line 1821
    .local v2, "extras":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1825
    .local v3, "i":I
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v1    # "extraString":Ljava/lang/String;
    .local v5, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1826
    .local v4, "key":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    const-string/jumbo v6, ""

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1829
    .local v1, "extraString":Ljava/lang/String;
    aput-object v1, v2, v3

    .line 1830
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1827
    .end local v1    # "extraString":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1832
    .end local v4    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2, v2}, Lorg/codeaurora/ims/CallDetails;->setExtras([Ljava/lang/String;)V

    .line 1816
    .end local v2    # "extras":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "key$iterator":Ljava/util/Iterator;
    :goto_2
    return-void

    .line 1834
    :cond_2
    const-string/jumbo v6, "No extras in ImsCallProfile to map into CallDetails."

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private failDialRequest(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 1796
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1797
    .local v0, "newMsg":Landroid/os/Message;
    new-instance v1, Landroid/telephony/ims/ImsException;

    const-string/jumbo v2, "Dial Failed"

    invoke-direct {v1, v2, p1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1799
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1795
    return-void
.end method

.method private getMtSuppSvcCode()I
    .locals 1

    .prologue
    .line 690
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mMtSuppSvcCode:I

    return v0
.end method

.method private getRadioTechFromCallMode(I)I
    .locals 1
    .param p1, "callMode"    # I

    .prologue
    .line 1543
    packed-switch p1, :pswitch_data_0

    .line 1552
    :pswitch_0
    const/4 v0, 0x0

    .line 1554
    .local v0, "radioTech":I
    :goto_0
    return v0

    .line 1545
    .end local v0    # "radioTech":I
    :pswitch_1
    const/16 v0, 0xe

    .line 1546
    .restart local v0    # "radioTech":I
    goto :goto_0

    .line 1549
    .end local v0    # "radioTech":I
    :pswitch_2
    const/16 v0, 0x12

    .line 1550
    .restart local v0    # "radioTech":I
    goto :goto_0

    .line 1543
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getResBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "strResName"    # Ljava/lang/String;
    .param p2, "strPackage"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2267
    :try_start_0
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 2268
    const/4 v5, 0x2

    .line 2267
    invoke-virtual {v4, p2, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 2269
    .local v2, "resCtx":Landroid/content/Context;
    if-nez v2, :cond_0

    return v6

    .line 2270
    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2271
    .local v1, "res":Landroid/content/res/Resources;
    if-nez v1, :cond_1

    return v6

    .line 2272
    :cond_1
    const-string/jumbo v4, "bool"

    invoke-virtual {v1, p1, v4, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2273
    .local v3, "resID":I
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 2274
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "resCtx":Landroid/content/Context;
    .end local v3    # "resID":I
    :catch_0
    move-exception v0

    .line 2275
    .local v0, "err":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2277
    return v6
.end method

.method private getRestrictCause(I[Lorg/codeaurora/ims/ServiceStatus;)I
    .locals 6
    .param p1, "srvType"    # I
    .param p2, "ability"    # [Lorg/codeaurora/ims/ServiceStatus;

    .prologue
    const/4 v3, 0x0

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "cause":I
    if-eqz p2, :cond_0

    .line 322
    array-length v4, p2

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, p2, v2

    .line 323
    .local v1, "srv":Lorg/codeaurora/ims/ServiceStatus;
    if-eqz v1, :cond_1

    iget v5, v1, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-ne v5, p1, :cond_1

    iget-object v5, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v5, :cond_1

    .line 324
    iget-object v5, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v5, v5

    if-lez v5, :cond_1

    .line 325
    iget-object v2, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v2, v2, v3

    iget v0, v2, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 330
    .end local v1    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :cond_0
    return v0

    .line 322
    .restart local v1    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getSuppSvcErrorMessage(I)Ljava/lang/String;
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 2208
    packed-switch p1, :pswitch_data_0

    .line 2217
    const v0, 0x7f040006

    .line 2220
    .local v0, "resId":I
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2210
    .end local v0    # "resId":I
    :pswitch_0
    const v0, 0x7f040007

    .line 2211
    .restart local v0    # "resId":I
    goto :goto_0

    .line 2213
    .end local v0    # "resId":I
    :pswitch_1
    const v0, 0x7f040008

    .line 2214
    .restart local v0    # "resId":I
    goto :goto_0

    .line 2208
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static hasCauseCodeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 3
    .param p0, "dc"    # Lorg/codeaurora/ims/DriverCallIms;
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    const/4 v0, 0x0

    .line 1680
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1681
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1680
    :cond_0
    return v0
.end method

.method private isConfigEnabled(I)Z
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 2343
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private isImsCallSessionAlive()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1057
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 1058
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    .line 1059
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    if-eqz v1, :cond_0

    .line 1060
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1057
    :cond_0
    return v0
.end method

.method private isLowBatteryVideoCall()Z
    .locals 1

    .prologue
    .line 1951
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMultiEndpointFailCause(I)Z
    .locals 2
    .param p1, "code"    # I

    .prologue
    const/4 v0, 0x1

    .line 538
    const/16 v1, 0x3f6

    if-eq p1, v1, :cond_0

    .line 539
    const/16 v1, 0x3f7

    if-ne p1, v1, :cond_1

    .line 538
    :cond_0
    :goto_0
    return v0

    .line 540
    :cond_1
    const/16 v1, 0x3f8

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z
    .locals 5
    .param p1, "srvType"    # I
    .param p2, "ability"    # [Lorg/codeaurora/ims/ServiceStatus;

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "allowed":Z
    if-eqz p2, :cond_1

    .line 300
    const/4 v2, 0x0

    array-length v3, p2

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p2, v2

    .line 301
    .local v1, "srv":Lorg/codeaurora/ims/ServiceStatus;
    if-eqz v1, :cond_2

    iget v4, v1, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-ne v4, p1, :cond_2

    .line 302
    iget v2, v1, Lorg/codeaurora/ims/ServiceStatus;->status:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 303
    iget v2, v1, Lorg/codeaurora/ims/ServiceStatus;->status:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 304
    :cond_0
    const/4 v0, 0x1

    .line 310
    .end local v1    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :cond_1
    return v0

    .line 300
    .restart local v1    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isSessionValid()Z
    .locals 3

    .prologue
    .line 1045
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 1046
    .local v0, "isValid":Z
    :goto_0
    if-nez v0, :cond_0

    .line 1047
    const-string/jumbo v1, "Session is closed"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1049
    :cond_0
    return v0

    .line 1045
    .end local v0    # "isValid":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSuppSvcToastMsgEnabled()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2192
    const/4 v0, 0x0

    .line 2195
    .local v0, "SUPP_SVC_TOAST_CONFIG_DISABLED":I
    const/4 v1, 0x1

    .line 2198
    .local v1, "SUPP_SVC_TOAST_CONFIG_ENABLED":I
    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "call.toast.supp_svc_fail"

    .line 2197
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2200
    .local v2, "toastMsgEnabled":I
    if-ne v2, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private isTerminateLowBatteryCall()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1936
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    if-eqz v2, :cond_0

    .line 1937
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 1939
    :cond_0
    return v1

    .line 1938
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v2, v2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v2, v3, :cond_0

    .line 1943
    :cond_2
    iget v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    if-ne v2, v0, :cond_3

    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static mapAudioCodecFromExtras(Ljava/lang/String;)I
    .locals 4
    .param p0, "codec"    # Ljava/lang/String;

    .prologue
    .line 1438
    const/4 v0, 0x0

    .line 1439
    .local v0, "audioQuality":I
    if-nez p0, :cond_0

    .line 1440
    const/4 v1, 0x0

    return v1

    .line 1442
    :cond_0
    const-string/jumbo v1, "QCELP13K"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1444
    const/4 v0, 0x3

    .line 1507
    :goto_0
    const-class v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AudioQuality is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    return v0

    .line 1442
    :cond_1
    const-string/jumbo v1, "EVRC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1447
    const/4 v0, 0x4

    .line 1448
    goto :goto_0

    .line 1442
    :cond_2
    const-string/jumbo v1, "EVRC_B"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1450
    const/4 v0, 0x5

    .line 1451
    goto :goto_0

    .line 1442
    :cond_3
    const-string/jumbo v1, "EVRC_WB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1453
    const/4 v0, 0x6

    .line 1454
    goto :goto_0

    .line 1442
    :cond_4
    const-string/jumbo v1, "EVRC_NW"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1456
    const/4 v0, 0x7

    .line 1457
    goto :goto_0

    .line 1442
    :cond_5
    const-string/jumbo v1, "AMR_NB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1459
    const/4 v0, 0x1

    .line 1460
    goto :goto_0

    .line 1442
    :cond_6
    const-string/jumbo v1, "AMR_WB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1462
    const/4 v0, 0x2

    .line 1463
    goto :goto_0

    .line 1442
    :cond_7
    const-string/jumbo v1, "GSM_EFR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1465
    const/16 v0, 0x8

    .line 1466
    goto :goto_0

    .line 1442
    :cond_8
    const-string/jumbo v1, "GSM_FR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1468
    const/16 v0, 0x9

    .line 1469
    goto :goto_0

    .line 1442
    :cond_9
    const-string/jumbo v1, "GSM_HR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1471
    const/16 v0, 0xa

    .line 1472
    goto/16 :goto_0

    .line 1442
    :cond_a
    const-string/jumbo v1, "G711U"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1474
    const/16 v0, 0xb

    .line 1475
    goto/16 :goto_0

    .line 1442
    :cond_b
    const-string/jumbo v1, "G723"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1477
    const/16 v0, 0xc

    .line 1478
    goto/16 :goto_0

    .line 1442
    :cond_c
    const-string/jumbo v1, "G711A"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1480
    const/16 v0, 0xd

    .line 1481
    goto/16 :goto_0

    .line 1442
    :cond_d
    const-string/jumbo v1, "G722"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1483
    const/16 v0, 0xe

    .line 1484
    goto/16 :goto_0

    .line 1442
    :cond_e
    const-string/jumbo v1, "G711AB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1486
    const/16 v0, 0xf

    .line 1487
    goto/16 :goto_0

    .line 1442
    :cond_f
    const-string/jumbo v1, "G729"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1489
    const/16 v0, 0x10

    .line 1490
    goto/16 :goto_0

    .line 1442
    :cond_10
    const-string/jumbo v1, "EVS_NB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1492
    const/16 v0, 0x11

    .line 1493
    goto/16 :goto_0

    .line 1442
    :cond_11
    const-string/jumbo v1, "EVS_WB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1495
    const/16 v0, 0x12

    .line 1496
    goto/16 :goto_0

    .line 1442
    :cond_12
    const-string/jumbo v1, "EVS_SWB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1498
    const/16 v0, 0x13

    .line 1499
    goto/16 :goto_0

    .line 1442
    :cond_13
    const-string/jumbo v1, "EVS_FB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1501
    const/16 v0, 0x14

    .line 1502
    goto/16 :goto_0

    .line 1504
    :cond_14
    const-class v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported codec "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private mapCallTypeFromProfile(I)I
    .locals 1
    .param p1, "callType"    # I

    .prologue
    .line 1517
    const/4 v0, 0x0

    .line 1518
    .local v0, "type":I
    packed-switch p1, :pswitch_data_0

    .line 1538
    :goto_0
    :pswitch_0
    return v0

    .line 1520
    :pswitch_1
    const/16 v0, 0xa

    .line 1521
    goto :goto_0

    .line 1523
    :pswitch_2
    const/4 v0, 0x0

    .line 1524
    goto :goto_0

    .line 1526
    :pswitch_3
    const/4 v0, 0x3

    .line 1527
    goto :goto_0

    .line 1529
    :pswitch_4
    const/4 v0, 0x1

    .line 1530
    goto :goto_0

    .line 1532
    :pswitch_5
    const/4 v0, 0x2

    .line 1533
    goto :goto_0

    .line 1535
    :pswitch_6
    const/4 v0, 0x4

    .line 1536
    goto :goto_0

    .line 1518
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private maybeCreateVideoProvider(Z)V
    .locals 3
    .param p1, "isVideoCallingEnabled"    # Z

    .prologue
    .line 165
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Landroid/telephony/internal/util/Preconditions;->checkState(Z)V

    .line 168
    const-string/jumbo v0, "maybeCreateVideoProvider: Creating VideoCallProvider"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    new-instance v0, Lorg/codeaurora/ims/ImsCallModification;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v0, p0, v1, v2}, Lorg/codeaurora/ims/ImsCallModification;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    .line 170
    new-instance v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/ImsCallModification;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    .line 171
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;)V

    .line 164
    :cond_0
    return-void

    .line 166
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeDisplaySuppServiceErrorMsg(Ljava/lang/String;Lorg/codeaurora/ims/ImsRilException;)V
    .locals 3
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "ex"    # Lorg/codeaurora/ims/ImsRilException;

    .prologue
    .line 2179
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSuppSvcToastMsgEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->toUiErrorCode(Lorg/codeaurora/ims/ImsRilException;)I

    move-result v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getSuppSvcErrorMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2181
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2178
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 4
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    const/4 v1, 0x0

    .line 555
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 556
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v2, v2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v1

    .line 557
    .local v0, "areStatesSame":Z
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;Z)Z

    move-result v1

    return v1

    .end local v0    # "areStatesSame":Z
    :cond_1
    move v0, v1

    .line 555
    goto :goto_0
.end method

.method private maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;Z)Z
    .locals 3
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;
    .param p2, "areStatesSame"    # Z

    .prologue
    .line 544
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 546
    .local v0, "isCallNotEnded":Z
    :goto_0
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call details updated. currentCallDetails= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 548
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v2, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 547
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 548
    const-string/jumbo v2, " to newCallDetails= "

    .line 547
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 548
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 547
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p0, v2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionUpdated(Landroid/telephony/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 551
    :cond_0
    if-eqz p2, :cond_2

    .end local v0    # "isCallNotEnded":Z
    :goto_1
    return v0

    .line 544
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isCallNotEnded":Z
    goto :goto_0

    .line 551
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private maybeUpdateLowBatteryStatus()Z
    .locals 4

    .prologue
    .line 576
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-nez v2, :cond_0

    .line 577
    const-string/jumbo v2, "merge is in progress so ignore low battery update"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    const/4 v2, 0x0

    return v2

    .line 581
    :cond_0
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isLowBattery()Z

    move-result v1

    .line 582
    .local v1, "isLowBattery":Z
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    if-eq v1, v2, :cond_2

    const/4 v0, 0x1

    .line 583
    .local v0, "hasChanged":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "maybeUpdateLowBatteryStatus isLowBattery: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 584
    const-string/jumbo v3, " mIsLowBattery: "

    .line 583
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 584
    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    .line 583
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 586
    if-eqz v0, :cond_1

    .line 587
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    .line 588
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 589
    const-string/jumbo v3, "LowBattery"

    .line 588
    invoke-virtual {v2, v3, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 591
    :cond_1
    return v0

    .line 582
    .end local v0    # "hasChanged":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "hasChanged":Z
    goto :goto_0
.end method

.method private notifySessionClosed()V
    .locals 4

    .prologue
    .line 265
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    monitor-enter v3

    .line 266
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;

    .line 267
    .local v0, "l":Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    invoke-interface {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;->onClosed(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 265
    .end local v0    # "l":Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 264
    return-void
.end method

.method private notifySessionDisconnected()V
    .locals 4

    .prologue
    .line 257
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    monitor-enter v3

    .line 258
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;

    .line 259
    .local v0, "l":Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    invoke-interface {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;->onDisconnected(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 257
    .end local v0    # "l":Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 256
    return-void
.end method

.method private parseErrorCode(Ljava/lang/String;)I
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 890
    const-string/jumbo v0, "CD-04"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    const/16 v0, 0x44c

    return v0

    .line 893
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 4
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    .line 603
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    new-instance v1, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v1, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 605
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 606
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 607
    const-string/jumbo v3, "Codec"

    .line 606
    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 605
    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapAudioCodecFromExtras(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 608
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setLocalProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 610
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v0, :cond_1

    .line 611
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setRemoteProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 612
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    if-eqz v0, :cond_1

    .line 613
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    new-instance v1, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v1, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 614
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 615
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 616
    const/4 v0, 0x3

    .line 617
    :goto_0
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 614
    invoke-direct {p0, v0, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRestrictCause(I[Lorg/codeaurora/ims/ServiceStatus;)I

    move-result v0

    iput v0, v1, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 602
    :cond_1
    return-void

    .line 616
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setLocalProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 5
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    const/4 v4, 0x3

    .line 624
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 623
    invoke-direct {p0, v4, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v0

    .line 626
    .local v0, "isLocalVideoServiceAllowed":Z
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 625
    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v1

    .line 628
    .local v1, "isLocalVoiceServiceAllowed":Z
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallRemoveModifyCallCapability(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 629
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v2, v3, :cond_0

    .line 635
    const/4 v0, 0x0

    .local v0, "isLocalVideoServiceAllowed":Z
    const/4 v1, 0x0

    .line 638
    .end local v0    # "isLocalVideoServiceAllowed":Z
    .end local v1    # "isLocalVoiceServiceAllowed":Z
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 639
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    .line 638
    if-eqz v2, :cond_1

    .line 639
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    .line 638
    if-eqz v2, :cond_1

    .line 640
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v4, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 622
    :goto_0
    return-void

    .line 641
    :cond_1
    if-eqz v0, :cond_2

    .line 642
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    .line 641
    if-eqz v2, :cond_2

    .line 643
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v3, 0x4

    iput v3, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_0

    .line 644
    :cond_2
    if-eqz v1, :cond_3

    .line 645
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    .line 644
    if-eqz v2, :cond_3

    .line 646
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v3, 0x2

    iput v3, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_0

    .line 648
    :cond_3
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v3, 0x7

    iput v3, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_0
.end method

.method private setMtSuppSvcCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 686
    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mMtSuppSvcCode:I

    .line 685
    return-void
.end method

.method private setRemoteProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 6
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 654
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 653
    invoke-direct {p0, v5, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v0

    .line 656
    .local v0, "isRemoteVideoServiceAllowed":Z
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 655
    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v1

    .line 658
    .local v1, "isRemoteVoiceServiceAllowed":Z
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallRemoveModifyCallCapability(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 659
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMtSuppSvcCode()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 660
    const/4 v0, 0x0

    .local v0, "isRemoteVideoServiceAllowed":Z
    const/4 v1, 0x0

    .line 663
    .end local v0    # "isRemoteVideoServiceAllowed":Z
    .end local v1    # "isRemoteVoiceServiceAllowed":Z
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 664
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v5, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 652
    :goto_0
    return-void

    .line 665
    :cond_1
    if-eqz v0, :cond_2

    .line 666
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v3, 0x4

    iput v3, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_0

    .line 667
    :cond_2
    if-eqz v1, :cond_3

    .line 668
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v4, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_0

    .line 670
    :cond_3
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v3, 0x7

    iput v3, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_0
.end method

.method private startAlert()V
    .locals 2

    .prologue
    .line 2291
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mWifiAlertHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2292
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$1;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mWifiAlertHandler:Landroid/os/Handler;

    .line 2316
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mWifiAlertHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2290
    return-void
.end method

.method private startBeepForAlert()V
    .locals 3

    .prologue
    .line 2320
    new-instance v1, Lorg/codeaurora/ims/ImsCallSessionImpl$2;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$2;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl$2;->start()V

    .line 2338
    const-string/jumbo v0, "Due to network conditions, the call may be dropped"

    .line 2339
    .local v0, "TOAST_AFTER_DROPCALL":Ljava/lang/String;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2319
    return-void
.end method

.method private updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 10
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 1562
    if-nez p1, :cond_0

    .line 1563
    const-string/jumbo v3, "updateImsCallProfile called with dc null"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1564
    return-void

    .line 1567
    :cond_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v3, :cond_1

    .line 1568
    new-instance v3, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v3}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1572
    :cond_1
    const/4 v0, 0x0

    .line 1573
    .local v0, "callMode":I
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v3, v3, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    if-eqz v3, :cond_3

    .line 1575
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v3, v3, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 1576
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v3, v3, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v2, v3, v1

    .line 1577
    .local v2, "servStatus":Lorg/codeaurora/ims/ServiceStatus;
    iget v3, v2, Lorg/codeaurora/ims/ServiceStatus;->type:I

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v4, v4, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-ne v3, v4, :cond_a

    .line 1578
    iget-object v3, v2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v6

    iget v0, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 1584
    .end local v2    # "servStatus":Lorg/codeaurora/ims/ServiceStatus;
    :cond_2
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string/jumbo v4, "CallRadioTech"

    .line 1585
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRadioTechFromCallMode(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1584
    invoke-virtual {v3, v4, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string/jumbo v4, "oi"

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string/jumbo v4, "cna"

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string/jumbo v4, "oir"

    .line 1591
    iget v5, p1, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    invoke-static {v5}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v5

    .line 1590
    invoke-virtual {v3, v4, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1592
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string/jumbo v4, "cnap"

    .line 1593
    iget v5, p1, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    invoke-static {v5}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v5

    .line 1592
    invoke-virtual {v3, v4, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1594
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string/jumbo v4, "CallSubstate"

    .line 1595
    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v5, v5, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 1594
    invoke-virtual {v3, v4, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1596
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1597
    const-string/jumbo v4, "CallEncryption"

    iget-boolean v5, p1, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    .line 1596
    invoke-virtual {v3, v4, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1598
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateImsCallProfile :: Packing encryption="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p1, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1599
    const-string/jumbo v4, " in mCallProfile\'s extras."

    .line 1598
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1600
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1606
    :cond_4
    :goto_1
    iget v3, p1, Lorg/codeaurora/ims/DriverCallIms;->mEctMask:I

    if-eqz v3, :cond_5

    .line 1607
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1608
    const-string/jumbo v4, "transferType"

    iget v5, p1, Lorg/codeaurora/ims/DriverCallIms;->mEctMask:I

    .line 1607
    invoke-virtual {v3, v4, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1611
    :cond_5
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-static {v3, p1}, Lorg/codeaurora/ims/ImsCallUtils;->hasCallTypeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-static {v3, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->hasCauseCodeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1612
    :cond_6
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1613
    const-string/jumbo v4, "SessionModificationCause"

    .line 1614
    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v5, v5, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    .line 1612
    invoke-virtual {v3, v4, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1616
    :cond_7
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateLowBatteryStatus()Z

    .line 1618
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    packed-switch v3, :pswitch_data_0

    .line 1665
    :goto_2
    :pswitch_0
    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCarrierOneSupported:Z

    if-eqz v3, :cond_9

    .line 1666
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRadioTechFromCallMode(I)I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_9

    .line 1667
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v3, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-eq v3, v7, :cond_8

    .line 1668
    iput v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mVoWifiQuality:I

    .line 1670
    :cond_8
    iget v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mVoWifiQuality:I

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateWiFiQualityExtra(I)V

    .line 1561
    :cond_9
    return-void

    .line 1575
    .restart local v1    # "i":I
    .restart local v2    # "servStatus":Lorg/codeaurora/ims/ServiceStatus;
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1601
    .end local v1    # "i":I
    .end local v2    # "servStatus":Lorg/codeaurora/ims/ServiceStatus;
    :cond_b
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 1602
    const-string/jumbo v4, "CallHistoryInfo"

    .line 1603
    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractHistoryInfoDetails(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1601
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1620
    :pswitch_1
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v9, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1621
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v8, v3, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_2

    .line 1625
    :pswitch_2
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v7, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1626
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v8, v3, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_2

    .line 1630
    :pswitch_3
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v4, 0x4

    iput v4, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1631
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1632
    const/4 v4, 0x3

    .line 1631
    iput v4, v3, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_2

    .line 1635
    :pswitch_4
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v4, 0x5

    iput v4, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1636
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v7, v3, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_2

    .line 1640
    :pswitch_5
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v4, 0x6

    iput v4, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1641
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v9, v3, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_2

    .line 1646
    :pswitch_6
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v6, v3, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_2

    .line 1618
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateLocalDc(Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 4
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    .line 339
    const/4 v1, 0x0

    .line 340
    .local v1, "hasChanged":Z
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v2, :cond_0

    .line 341
    new-instance v2, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v2, p1}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/DriverCallIms;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 342
    const/4 v1, 0x1

    .line 357
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLocalDc is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    return v1

    .line 344
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {v2, p1}, Lorg/codeaurora/ims/DriverCallIms;->update(Lorg/codeaurora/ims/DriverCallIms;)I

    move-result v0

    .line 347
    .local v0, "changedProperties":I
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v2, :cond_1

    .line 348
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_1

    .line 349
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    if-eqz v2, :cond_1

    .line 350
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 351
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v3, v3, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    .line 350
    invoke-virtual {v2, p0, v3}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionMultipartyStateChanged(Landroid/telephony/ims/internal/IImsCallSession;Z)V

    .line 355
    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .prologue
    .line 1877
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1880
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1881
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v2

    .line 1880
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->acceptCall(Landroid/os/Message;I)V

    .line 1876
    return-void
.end method

.method public addListener(Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;

    .prologue
    .line 211
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 213
    :cond_0
    if-nez p1, :cond_1

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 220
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 221
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 210
    return-void

    .line 223
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Duplicate listener, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public canTransferToId()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1309
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1310
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v1, :cond_1

    .line 1311
    return v0

    .line 1313
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget v1, v1, Lorg/codeaurora/ims/DriverCallIms;->mEctMask:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public canTransferToNumber()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1294
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1295
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v1, :cond_1

    .line 1296
    return v0

    .line 1300
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget v1, v1, Lorg/codeaurora/ims/DriverCallIms;->mEctMask:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 1110
    const-string/jumbo v0, "Close!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1111
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1112
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1109
    :cond_0
    return-void
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 4
    .param p1, "deflectNumber"    # Ljava/lang/String;

    .prologue
    .line 1890
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1892
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 1893
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1892
    invoke-virtual {v0, v1, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->deflectCall(ILjava/lang/String;Landroid/os/Message;)V

    .line 1889
    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;

    .prologue
    .line 2046
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2045
    :cond_0
    return-void
.end method

.method public getCallDomain()I
    .locals 2

    .prologue
    .line 1237
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    return v1

    .line 1239
    :cond_0
    const/4 v0, 0x3

    .line 1240
    .local v0, "callDomain":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v1, :cond_1

    .line 1241
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v1, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 1243
    :cond_1
    return v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1122
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .prologue
    .line 1153
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1154
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getCallee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1266
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1267
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    return-object v0
.end method

.method public getConfInfo()Lorg/codeaurora/ims/parser/ConfInfo;
    .locals 1

    .prologue
    .line 2153
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2154
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    return-object v0
.end method

.method public getDcState()Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1252
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_0

    .line 1253
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1255
    :cond_0
    const-string/jumbo v0, "Null mDc! Returning null!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1256
    return-object v1
.end method

.method public getDriverCallState()Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 1

    .prologue
    .line 1271
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1272
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0
.end method

.method getImsCallModification()Lorg/codeaurora/ims/ImsCallModification;
    .locals 1

    .prologue
    .line 293
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 294
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    return-object v0
.end method

.method public getImsVideoCallProviderImpl()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 253
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    return-object v0
.end method

.method public getInternalCallType()I
    .locals 3

    .prologue
    .line 1225
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    return v1

    .line 1227
    :cond_0
    const/16 v0, 0xa

    .line 1228
    .local v0, "callType":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v1, :cond_2

    .line 1229
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 1233
    :cond_1
    :goto_0
    return v0

    .line 1230
    :cond_2
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_1

    .line 1231
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->convertToInternalCallType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 3

    .prologue
    .line 1213
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v1

    .line 1215
    :cond_0
    const/4 v0, 0x0

    .line 1216
    .local v0, "state":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_2

    .line 1217
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 1221
    .end local v0    # "state":Lorg/codeaurora/ims/DriverCallIms$State;
    :cond_1
    :goto_0
    return-object v0

    .line 1218
    .restart local v0    # "state":Lorg/codeaurora/ims/DriverCallIms$State;
    :cond_2
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1219
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    .local v0, "state":Lorg/codeaurora/ims/DriverCallIms$State;
    goto :goto_0
.end method

.method public getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .prologue
    .line 1163
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1164
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getMediaId()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1132
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1133
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    :cond_1
    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1183
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    .line 1185
    :cond_0
    const/4 v0, 0x0

    .line 1187
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_1

    .line 1188
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1192
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1190
    .restart local v0    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "Call Profile null! "

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .prologue
    .line 1173
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1174
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 1202
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1203
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    return v0
.end method

.method public getVideoCallProvider()Landroid/telephony/ims/internal/IImsVideoCallProvider;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2115
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 2117
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-nez v0, :cond_1

    .line 2118
    const-string/jumbo v0, "getVideoCallProvider: Video call provider is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2119
    return-object v1

    .line 2122
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->getInterface()Landroid/telephony/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    return-object v0
.end method

.method public handleHandover(IIII[BLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "hoType"    # I
    .param p2, "srcTech"    # I
    .param p3, "targetTech"    # I
    .param p4, "extraType"    # I
    .param p5, "extraInfo"    # [B
    .param p6, "errorCode"    # Ljava/lang/String;
    .param p7, "errorMessage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 839
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hoType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "srcTech: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 840
    const-string/jumbo v2, " targetTech: "

    .line 839
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 842
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 844
    :cond_0
    invoke-direct {p0, p6}, Lorg/codeaurora/ims/ImsCallSessionImpl;->parseErrorCode(Ljava/lang/String;)I

    move-result v0

    .line 846
    .local v0, "error":I
    packed-switch p1, :pswitch_data_0

    .line 882
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unhandled hoType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 838
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 850
    :pswitch_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 851
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v0, v3, p7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 850
    invoke-virtual {v1, p0, p2, p3, v2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionHandover(Landroid/telephony/ims/internal/IImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 857
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCarrierOneSupported:Z

    if-eqz v1, :cond_1

    .line 858
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    if-nez v1, :cond_1

    .line 859
    const/16 v1, 0x12

    if-eq p2, v1, :cond_2

    .line 860
    const/16 v1, 0x13

    if-ne p2, v1, :cond_1

    .line 861
    :cond_2
    const/16 v1, 0xe

    if-ne p3, v1, :cond_1

    .line 862
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateVoWiFiCallQuality(I)V

    goto :goto_0

    .line 867
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HO Failure for WWAN->IWLAN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 868
    if-ne p4, v4, :cond_3

    .line 869
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string/jumbo v2, "handoverInfo"

    invoke-virtual {v1, v2, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 872
    :cond_3
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->alertForHandoverFailed()V

    .line 873
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 874
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v0, v3, p7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 873
    invoke-virtual {v1, p0, p2, p3, v2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionHandoverFailed(Landroid/telephony/ims/internal/IImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 877
    :pswitch_3
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->alertForHandoverFailed()V

    .line 878
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 879
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v0, v3, p7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 878
    invoke-virtual {v1, p0, p2, p3, v2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionHandoverFailed(Landroid/telephony/ims/internal/IImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 846
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public handleRetryErrorNotify(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 6
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    .line 784
    const/4 v3, 0x0

    .line 785
    .local v3, "sipErrorCode":I
    iget v4, p1, Lorg/codeaurora/ims/DriverCallIms;->mCallFailReason:I

    packed-switch v4, :pswitch_data_0

    .line 819
    :goto_0
    :pswitch_0
    if-eqz v3, :cond_0

    .line 820
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Retry Error Notify "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 821
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AdditionalCallInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, "additionalCallInfo":Ljava/lang/String;
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v4, v0}, Lorg/codeaurora/ims/CallDetails;->addExtra(Ljava/lang/String;)V

    .line 824
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string/jumbo v5, "AdditionalCallInfo"

    invoke-virtual {v4, v5, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 827
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 828
    const/high16 v5, 0x7f030000

    .line 827
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 829
    .local v1, "displayCsRetryToast":Z
    if-eqz v1, :cond_0

    .line 830
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LTE HD voice is unavailable. 3G voice call will be connected.SIP Error code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 832
    .local v2, "msg":Ljava/lang/String;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 783
    .end local v0    # "additionalCallInfo":Ljava/lang/String;
    .end local v1    # "displayCsRetryToast":Z
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    return-void

    .line 787
    :pswitch_1
    const/16 v3, 0x193

    .line 788
    goto :goto_0

    .line 790
    :pswitch_2
    const/16 v3, 0x198

    .line 791
    goto :goto_0

    .line 793
    :pswitch_3
    const/16 v3, 0x1e0

    .line 794
    goto :goto_0

    .line 796
    :pswitch_4
    const/16 v3, 0x1f4

    .line 797
    goto :goto_0

    .line 799
    :pswitch_5
    const/16 v3, 0x1f5

    .line 800
    goto :goto_0

    .line 802
    :pswitch_6
    const/16 v3, 0x1f6

    .line 803
    goto :goto_0

    .line 805
    :pswitch_7
    const/16 v3, 0x1f7

    .line 806
    goto :goto_0

    .line 808
    :pswitch_8
    const/16 v3, 0x1f9

    .line 809
    goto :goto_0

    .line 811
    :pswitch_9
    const/16 v3, 0x201

    .line 812
    goto/16 :goto_0

    .line 814
    :pswitch_a
    const/16 v3, 0x244

    .line 815
    goto/16 :goto_0

    .line 785
    nop

    :pswitch_data_0
    .packed-switch 0x7d3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public hasMediaIdValid()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1143
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1144
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CallDetails;->hasMediaIdValid()Z

    move-result v0

    :cond_1
    return v0
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .prologue
    .line 1989
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1991
    :cond_0
    const-string/jumbo v0, "hold requested."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1992
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget v2, v2, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->hold(Landroid/os/Message;I)V

    .line 1988
    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 5
    .param p1, "participants"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2058
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2060
    :cond_0
    aget-object v0, p1, v4

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 2061
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 2062
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2061
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->addParticipant(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Landroid/os/Message;)V

    .line 2057
    return-void
.end method

.method public isCallActive()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1919
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1920
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isConfInProgress()Z
    .locals 1

    .prologue
    .line 1689
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1690
    :cond_0
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    return v0
.end method

.method public isInCall()Z
    .locals 3

    .prologue
    .line 1322
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1324
    :cond_0
    const/4 v0, 0x0

    .line 1325
    .local v0, "isInCall":Z
    invoke-static {}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-getorg-codeaurora-ims-DriverCallIms$StateSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v2, v2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v2}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1335
    :goto_0
    :pswitch_0
    return v0

    .line 1332
    :pswitch_1
    const/4 v0, 0x1

    .line 1333
    goto :goto_0

    .line 1325
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isMultiparty()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1281
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 1282
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v0, :cond_1

    .line 1283
    return v1

    .line 1285
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v0, v0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    return v0
.end method

.method public isMultipartyCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1247
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1248
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v0, v0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    :cond_1
    return v0
.end method

.method public merge()V
    .locals 1

    .prologue
    .line 2015
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2018
    :cond_0
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-nez v0, :cond_1

    .line 2019
    const-string/jumbo v0, "merge request is already in progress, ignore this merge request"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2020
    return-void

    .line 2025
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->sendConferenceRequest(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 2014
    return-void
.end method

.method public muteStateReporting()V
    .locals 2

    .prologue
    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Call session state reporting muted! session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    .line 361
    return-void
.end method

.method public notifyConfInfo([B)V
    .locals 2
    .param p1, "confInfoBytes"    # [B

    .prologue
    .line 2136
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2138
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/parser/ConfInfo;->updateConfXmlBytes([B)V

    .line 2139
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/ConfInfo;->getConfUriList()Landroid/telephony/ims/ImsConferenceState;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    .line 2140
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    if-eqz v0, :cond_1

    .line 2141
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 2142
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    .line 2141
    invoke-virtual {v0, p0, v1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionConferenceStateUpdated(Landroid/telephony/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsConferenceState;)V

    .line 2135
    :cond_1
    return-void
.end method

.method public notifyTtyModeChange(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TTY mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 773
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 775
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    if-eqz v0, :cond_1

    .line 777
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionTtyModeReceived(Landroid/telephony/ims/internal/IImsCallSession;I)V

    .line 770
    :goto_0
    return-void

    .line 779
    :cond_1
    const-string/jumbo v0, "notifyTtyModeChange ListenerProxy null! "

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyUnsolCallModify(Lorg/codeaurora/ims/CallModify;)V
    .locals 4
    .param p1, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    .line 273
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 275
    :cond_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    monitor-enter v3

    .line 276
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;

    .line 277
    .local v0, "l":Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    invoke-interface {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;->onUnsolCallModify(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/CallModify;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 275
    .end local v0    # "l":Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v3

    .line 272
    return-void
.end method

.method onReceivedModifyCall(Lorg/codeaurora/ims/CallModify;)V
    .locals 1
    .param p1, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    .line 284
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-nez v0, :cond_0

    .line 285
    const-string/jumbo v0, "onReceivedModifyCall: Ignoring session modification request."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallModification;->onReceivedModifyCall(Lorg/codeaurora/ims/CallModify;)V

    .line 283
    return-void
.end method

.method public reject(I)V
    .locals 8
    .param p1, "reason"    # I

    .prologue
    const/4 v2, 0x0

    .line 1903
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1905
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reject "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1908
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isLowBatteryVideoCall()Z

    move-result v0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCallTerminatedDueToLowBattery:Z

    .line 1909
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCallTerminatedDueToLowBattery:Z

    if-eqz v0, :cond_1

    .line 1910
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->allowVideoCallsInLowBattery(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1914
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 1915
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1914
    const/4 v4, 0x0

    move-object v3, v2

    move v5, p1

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    .line 1902
    return-void

    .line 1911
    :cond_2
    const/16 p1, 0x1f9

    goto :goto_0
.end method

.method public removeListener(Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;

    .prologue
    .line 234
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    if-nez p1, :cond_1

    .line 237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 243
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 233
    return-void

    .line 246
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Listener not found, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 8
    .param p1, "participants"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2073
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2074
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 2076
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 2077
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xb

    invoke-virtual {v1, v4, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2076
    const/4 v1, -0x1

    const/4 v4, 0x1

    const/16 v5, 0x1f5

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    .line 2072
    return-void
.end method

.method public reportNewConferenceCallSession(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "confCallSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 1368
    if-eqz p1, :cond_0

    .line 1369
    const-string/jumbo v0, "Calling callSessionMergeStarted"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1370
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 1372
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    .line 1370
    invoke-virtual {v0, p0, p1, v1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionMergeStarted(Landroid/telephony/ims/internal/IImsCallSession;Landroid/telephony/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1367
    :goto_0
    return-void

    .line 1375
    :cond_0
    const-string/jumbo v0, "Null confCallSession! Not calling callSessionMergeStarted"

    .line 1374
    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .prologue
    .line 2003
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2005
    :cond_0
    const-string/jumbo v0, "resume requested."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2006
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget v2, v2, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->resume(Landroid/os/Message;I)V

    .line 2002
    return-void
.end method

.method public resumePendingCall(I)V
    .locals 2
    .param p1, "videoState"    # I

    .prologue
    .line 1809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resumePendingCall VideoState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1811
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-static {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v1

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1812
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p0, v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1808
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2089
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2091
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendDtmf(CLandroid/os/Message;)V

    .line 2088
    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 1
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .prologue
    .line 2131
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2130
    :cond_0
    return-void
.end method

.method public setConfInfo(Lorg/codeaurora/ims/parser/ConfInfo;)V
    .locals 1
    .param p1, "confInfo"    # Lorg/codeaurora/ims/parser/ConfInfo;

    .prologue
    .line 2147
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2149
    :cond_0
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    .line 2146
    return-void
.end method

.method public setListener(Landroid/telephony/ims/internal/IImsCallSessionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/telephony/ims/internal/IImsCallSessionListener;

    .prologue
    .line 1346
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1347
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iput-object p1, v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/internal/IImsCallSessionListener;

    .line 1345
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 1356
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1355
    :cond_0
    return-void
.end method

.method public setNewSession(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 1
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 1697
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1698
    :cond_0
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->newSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 1696
    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 10
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 1711
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1713
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, p2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1714
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, p2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput-object v1, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1716
    iput v8, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 1717
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1721
    const-string/jumbo v0, "oir"

    invoke-virtual {p2, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v2

    .line 1722
    .local v2, "clir":I
    const/4 v7, 0x3

    .line 1723
    .local v7, "domain":I
    const/4 v4, 0x0

    .line 1724
    .local v4, "isEncrypted":Z
    const-string/jumbo v0, "persist.dbg.call_encrypt_ovr"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 1726
    const/4 v4, 0x1

    .line 1741
    .end local v4    # "isEncrypted":Z
    :cond_1
    :goto_0
    new-instance v3, Lorg/codeaurora/ims/CallDetails;

    iget v0, p2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v0

    invoke-direct {v3, v0, v7, v9}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 1744
    .local v3, "details":Lorg/codeaurora/ims/CallDetails;
    invoke-direct {p0, p2, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractProfileExtrasIntoCallDetails(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/CallDetails;)V

    .line 1746
    const-string/jumbo v0, "CallPull"

    invoke-virtual {p2, v0, v5}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v3, v0}, Lorg/codeaurora/ims/CallDetails;->setCallPull(Z)V

    .line 1748
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1749
    iget v0, v3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithDir(I)Z

    move-result v0

    .line 1748
    if-eqz v0, :cond_3

    .line 1750
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateLowBatteryStatus()Z

    move-result v0

    .line 1748
    if-eqz v0, :cond_3

    .line 1751
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string/jumbo v1, "oir"

    .line 1752
    invoke-static {v8}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v5

    .line 1751
    invoke-virtual {v0, v1, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1753
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string/jumbo v1, "cnap"

    .line 1754
    invoke-static {v8}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v5

    .line 1753
    invoke-virtual {v0, v1, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1757
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, p0, v1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionUpdated(Landroid/telephony/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1758
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    if-eqz v0, :cond_3

    .line 1761
    const-string/jumbo v0, "defer low battery video call dial request"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1762
    return-void

    .line 1728
    .end local v3    # "details":Lorg/codeaurora/ims/CallDetails;
    .restart local v4    # "isEncrypted":Z
    :cond_2
    iget-object v0, p2, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string/jumbo v1, "OemCallExtras"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 1729
    .local v6, "callExtras":Landroid/os/Bundle;
    if-eqz v6, :cond_1

    .line 1731
    const-string/jumbo v0, "CallEncryption"

    .line 1730
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1732
    .local v4, "isEncrypted":Z
    const-string/jumbo v0, "CallEncryption"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 1766
    .end local v4    # "isEncrypted":Z
    .end local v6    # "callExtras":Landroid/os/Bundle;
    .restart local v3    # "details":Lorg/codeaurora/ims/CallDetails;
    :cond_3
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->canDial(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1767
    const/16 v0, 0x70

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->failDialRequest(I)V

    .line 1768
    return-void

    .line 1771
    :cond_4
    const v0, 0x7f030006

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isConfigEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1772
    iget v0, v3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithDir(I)Z

    move-result v0

    .line 1771
    if-eqz v0, :cond_5

    .line 1773
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallNumValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1778
    :cond_5
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 1779
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v1, p1

    .line 1778
    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->dial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLandroid/os/Message;)V

    .line 1710
    return-void

    .line 1774
    :cond_6
    const/16 v0, 0x96

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->failDialRequest(I)V

    .line 1775
    return-void
.end method

.method public startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 8
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1850
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1852
    :cond_0
    iput-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1853
    iput v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 1854
    aget-object v0, p1, v2

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1858
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    .line 1859
    .local v6, "extrasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "isConferenceUri"

    .line 1860
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    .line 1859
    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1861
    invoke-static {v6}, Lorg/codeaurora/ims/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v7

    .line 1863
    .local v7, "mMoExtras":[Ljava/lang/String;
    new-instance v3, Lorg/codeaurora/ims/CallDetails;

    iget v0, p2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v0

    .line 1864
    const/4 v1, 0x3

    .line 1863
    invoke-direct {v3, v0, v1, v7}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 1865
    .local v3, "details":Lorg/codeaurora/ims/CallDetails;
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    aget-object v1, p1, v2

    .line 1866
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v4, v2

    .line 1865
    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->dial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLandroid/os/Message;)V

    .line 1849
    return-void
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 2102
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2103
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->startDtmf(CLandroid/os/Message;)V

    .line 2101
    return-void
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 2110
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2111
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->stopDtmf(Landroid/os/Message;)V

    .line 2109
    return-void
.end method

.method public terminate(I)V
    .locals 8
    .param p1, "reason"    # I

    .prologue
    const/4 v2, 0x0

    .line 1960
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1962
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isTerminateLowBatteryCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "terminate: fail deferred low battery video call with reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1966
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->failDialRequest(I)V

    .line 1967
    return-void

    .line 1970
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "terminate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1974
    const/16 v0, 0x1f9

    if-ne p1, v0, :cond_2

    .line 1975
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCallTerminatedDueToLowBattery:Z

    .line 1978
    :cond_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 1979
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1978
    const/4 v4, 0x0

    move-object v3, v2

    move v5, p1

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    .line 1959
    return-void
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2230
    invoke-super {p0}, Landroid/telephony/ims/internal/IImsCallSession$Stub;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " callid= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mState= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mDc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2225
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 2224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2225
    const-string/jumbo v1, " mCallProfile="

    .line 2224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2225
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 2224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2225
    const-string/jumbo v1, " mLocalCallProfile="

    .line 2224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2225
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 2224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2226
    const-string/jumbo v1, " mRemoteCallProfile="

    .line 2224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2226
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 2224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unMuteStateReporting()V
    .locals 2

    .prologue
    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Call session state reporting unmuted. session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    .line 366
    return-void
.end method

.method public update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .prologue
    .line 2036
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2035
    :cond_0
    return-void
.end method

.method public updateCall(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 8
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    const/16 v7, 0x1fe

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCall for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 388
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 389
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 391
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-eqz v3, :cond_1

    .line 392
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-virtual {v3, p1}, Lorg/codeaurora/ims/ImsCallModification;->update(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 395
    :cond_1
    iget-boolean v3, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz v3, :cond_2

    .line 396
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 397
    const-string/jumbo v4, "incomingConference"

    .line 396
    invoke-virtual {v3, v4, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 400
    :cond_2
    invoke-static {}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-getorg-codeaurora-ims-DriverCallIms$StateSwitchesValues()[I

    move-result-object v3

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v4}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 530
    :cond_3
    :goto_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v3, :cond_16

    if-eqz p1, :cond_16

    .line 531
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v3, v3, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_15

    const/4 v0, 0x1

    .line 532
    .local v0, "areStatesSame":Z
    :goto_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateLocalDc(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 533
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;Z)Z

    .line 382
    :cond_4
    return-void

    .line 402
    .end local v0    # "areStatesSame":Z
    :pswitch_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v3, :cond_5

    .line 404
    const-string/jumbo v3, "Phantom call!"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    iput v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 406
    iget v3, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 407
    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v3, :cond_3

    .line 408
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v3, p0, v4}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionStarted(Landroid/telephony/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 410
    :cond_5
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v3, v3, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v3, v4, :cond_6

    .line 411
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v3, v3, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_7

    .line 414
    :cond_6
    iput v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 415
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    iput-object v4, v3, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 417
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 418
    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v3, :cond_3

    .line 419
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v3, p0, v4}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionStarted(Landroid/telephony/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 412
    :cond_7
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v3, v3, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v3, v4, :cond_6

    .line 413
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v3, v3, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v3, v4, :cond_6

    .line 423
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v3, v3, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_8

    .line 424
    const-string/jumbo v3, "Call being resumed."

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    iput-boolean v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 427
    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v3, :cond_3

    .line 428
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v3, p0, v4}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionResumed(Landroid/telephony/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    goto/16 :goto_0

    .line 431
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Call resumed skipped, conf status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 435
    :pswitch_1
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v3, v3, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v3, v4, :cond_3

    .line 436
    const-string/jumbo v3, "Call being held."

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v3, :cond_3

    .line 438
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v3, p0, v4}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionHeld(Landroid/telephony/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    goto/16 :goto_0

    .line 443
    :pswitch_2
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v3, :cond_9

    .line 444
    const-string/jumbo v3, "MO Dialing call!"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    iget v3, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 446
    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v3, :cond_9

    .line 447
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 448
    new-instance v4, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v4}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 447
    invoke-virtual {v3, p0, v4}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionProgressing(Landroid/telephony/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 451
    :cond_9
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->handleRetryErrorNotify(Lorg/codeaurora/ims/DriverCallIms;)V

    goto/16 :goto_0

    .line 455
    :pswitch_3
    const/4 v3, 0x2

    iput v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 456
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v3, :cond_a

    .line 457
    const-string/jumbo v3, "MO Alerting call!"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    iget v3, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 460
    :cond_a
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v3, v3, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v3, v4, :cond_c

    .line 462
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 463
    new-instance v2, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 464
    .local v2, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    if-eqz v3, :cond_b

    .line 465
    iput v6, v2, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 467
    :cond_b
    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v3, :cond_c

    .line 468
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v3, p0, v2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionProgressing(Landroid/telephony/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 471
    .end local v2    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_c
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->handleRetryErrorNotify(Lorg/codeaurora/ims/DriverCallIms;)V

    goto/16 :goto_0

    .line 476
    :pswitch_4
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 478
    iget-boolean v3, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz v3, :cond_3

    .line 479
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 480
    const-string/jumbo v4, "incomingConference"

    iget-boolean v5, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    .line 479
    invoke-virtual {v3, v4, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 481
    const-string/jumbo v3, "Setting the multi party flag to false"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    iput-boolean v6, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    goto/16 :goto_0

    .line 487
    :pswitch_5
    const/16 v3, 0x8

    iput v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 489
    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCallTerminatedDueToLowBattery:Z

    if-eqz v3, :cond_d

    .line 490
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->allowVideoCallsInLowBattery(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 492
    :cond_d
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v1, v3, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 493
    .local v1, "errorCode":I
    :goto_2
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string/jumbo v4, "CallFailExtraCode"

    invoke-virtual {v3, v4, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sip callFailCause:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    iget v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    if-nez v3, :cond_14

    .line 497
    if-eqz p1, :cond_10

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v3, :cond_10

    .line 500
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v3, v3, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-eqz v3, :cond_f

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v3, v3, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v3, v4, :cond_e

    .line 501
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v3, v3, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_f

    .line 502
    :cond_e
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v3, v3, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultiEndpointFailCause(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 507
    :cond_f
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v3, v3, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 508
    const/16 v4, 0x1f5

    .line 507
    if-ne v3, v4, :cond_13

    .line 510
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 511
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    .line 512
    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v5, v5, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    .line 513
    iget-object v6, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v6, v6, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 511
    invoke-direct {v4, v7, v5, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 510
    invoke-virtual {v3, p0, v4}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionTerminated(Landroid/telephony/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 526
    :cond_10
    :goto_3
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifySessionDisconnected()V

    goto/16 :goto_0

    .line 491
    .end local v1    # "errorCode":I
    :cond_11
    const/16 v1, 0x70

    .restart local v1    # "errorCode":I
    goto :goto_2

    .line 503
    :cond_12
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 504
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    .line 505
    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v5, v5, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    .line 506
    iget-object v6, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v6, v6, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 504
    invoke-direct {v4, v7, v5, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 503
    invoke-virtual {v3, p0, v4}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionTerminated(Landroid/telephony/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_3

    .line 515
    :cond_13
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 516
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 515
    invoke-virtual {v3, p0, v4}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionTerminated(Landroid/telephony/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_3

    .line 520
    :cond_14
    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v3, :cond_10

    .line 521
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 522
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    iget v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    iget-object v6, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v6, v6, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    .line 523
    iget-object v7, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v7, v7, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 522
    invoke-direct {v4, v5, v6, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 521
    invoke-virtual {v3, p0, v4}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionTerminated(Landroid/telephony/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_3

    .line 531
    .end local v1    # "errorCode":I
    :cond_15
    const/4 v0, 0x0

    .restart local v0    # "areStatesSame":Z
    goto/16 :goto_1

    .line 530
    .end local v0    # "areStatesSame":Z
    :cond_16
    const/4 v0, 0x0

    .restart local v0    # "areStatesSame":Z
    goto/16 :goto_1

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public updateConfSession(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 2
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateConfSession for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 677
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 679
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz v0, :cond_1

    .line 680
    const/4 v0, 0x4

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 681
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget v0, v0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 674
    :cond_1
    return-void
.end method

.method public updateFeatureCapabilities(ZZ)V
    .locals 2
    .param p1, "isVideo"    # Z
    .param p2, "isVoice"    # Z

    .prologue
    .line 2158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFeatureCapabilities video "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " voice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2159
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2161
    :cond_0
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    if-eq v0, p2, :cond_2

    .line 2162
    :cond_1
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    .line 2163
    iput-boolean p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    .line 2164
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_2

    .line 2165
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 2166
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeCreateVideoProvider(Z)V

    .line 2167
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_2

    .line 2168
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, p0, v1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionUpdated(Landroid/telephony/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 2157
    :cond_2
    return-void
.end method

.method public updateLowBatteryStatus()V
    .locals 1

    .prologue
    .line 595
    const-string/jumbo v0, "updateLowBatteryStatus"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateLowBatteryStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    .line 594
    :cond_0
    return-void
.end method

.method public updateMergeStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateMergeStatus status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->updateMergeStatus(I)V

    .line 371
    :cond_0
    return-void
.end method

.method public updateOrientationMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOrientationMode: orientation mode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string/jumbo v2, "OrientationMode"

    invoke-virtual {v1, v2, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 563
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v0

    .line 564
    .local v0, "isCallSessionUpdated":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOrientationMode: isCallSessionUpdated - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method updateSuppServiceInfo(Landroid/telephony/ims/ImsSuppServiceNotification;Z)V
    .locals 5
    .param p1, "suppSvcNotification"    # Landroid/telephony/ims/ImsSuppServiceNotification;
    .param p2, "startOnHoldLocalTone"    # Z

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x0

    .line 702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSuppSvcInfo: suppSvcNotification= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 703
    const-string/jumbo v2, " startOnHoldLocalTone = "

    .line 702
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 705
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 709
    :cond_0
    iget v1, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->notificationType:I

    if-nez v1, :cond_2

    .line 710
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v1, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionSuppServiceReceived(Landroid/telephony/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 701
    :cond_1
    :goto_0
    return-void

    .line 711
    :cond_2
    iget v1, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->notificationType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 712
    const/4 v0, 0x0

    .line 713
    .local v0, "isChanged":Z
    iget v1, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->code:I

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setMtSuppSvcCode(I)V

    .line 715
    iget v1, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->code:I

    packed-switch v1, :pswitch_data_0

    .line 753
    const-string/jumbo v1, "Non-Hold/Resume supp svc code received."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 754
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v1, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionSuppServiceReceived(Landroid/telephony/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 758
    :cond_3
    :goto_1
    if-eqz v0, :cond_1

    .line 759
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p0, v2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionUpdated(Landroid/telephony/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 718
    :pswitch_0
    if-eqz p2, :cond_4

    .line 719
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v3, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 722
    :cond_4
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p0, v2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionHoldReceived(Landroid/telephony/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 724
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallRemoveModifyCallCapability(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 725
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-eq v1, v4, :cond_3

    .line 731
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v4, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 732
    const/4 v0, 0x1

    goto :goto_1

    .line 737
    :pswitch_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    if-nez v1, :cond_5

    .line 739
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 740
    const/4 v2, 0x3

    .line 739
    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 742
    :cond_5
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p0, v2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionResumeReceived(Landroid/telephony/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 744
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallRemoveModifyCallCapability(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 745
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-ne v1, v4, :cond_3

    .line 747
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setRemoteProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 748
    const/4 v0, 0x1

    goto :goto_1

    .line 715
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateVideoCallDataUsageInfo(Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V
    .locals 3
    .param p1, "dataUsage"    # Lorg/codeaurora/ims/QtiVideoCallDataUsage;

    .prologue
    .line 568
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string/jumbo v2, "dataUsage"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 570
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v0

    .line 571
    .local v0, "isCallSessionUpdated":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateVideoCallDataUsageInfo: isCallSessionUpdated - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    return-void
.end method

.method public updateVoWiFiCallQuality(I)V
    .locals 2
    .param p1, "quality"    # I

    .prologue
    .line 2361
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mVoWifiQuality:I

    if-eq p1, v0, :cond_1

    .line 2362
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    if-nez v0, :cond_1

    .line 2363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateVoWiFiCallQuality "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mVoWifiQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2364
    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mVoWifiQuality:I

    .line 2367
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2368
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mVoWifiQuality:I

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateWiFiQualityExtra(I)V

    .line 2369
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    .line 2360
    :cond_0
    :goto_0
    return-void

    .line 2372
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateVoWiFiCallQuality Unchanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateWiFiQualityExtra(I)V
    .locals 2
    .param p1, "quality"    # I

    .prologue
    .line 2351
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string/jumbo v1, "VoWiFiCallQuality"

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2350
    return-void
.end method
