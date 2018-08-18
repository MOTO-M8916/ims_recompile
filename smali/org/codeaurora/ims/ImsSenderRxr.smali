.class public final Lorg/codeaurora/ims/ImsSenderRxr;
.super Lorg/codeaurora/ims/ImsPhoneBaseCommands;
.source "ImsSenderRxr.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsPhoneCommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;,
        Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;
    }
.end annotation


# static fields
.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0xea60

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "ImsSenderRxr"

.field static final MAX_COMMAND_BYTES:I = 0x2000

.field private static final MSG_TAG_LENGTH:I = 0x1

.field private static final PDU_LENGTH_OFFSET:I = 0x4

.field static final RESPONSE_SOLICITED:I = 0x0

.field static final RESPONSE_UNSOLICITED:I = 0x1

.field static final SOCKET_NAME_IF:[Ljava/lang/String;

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field static final TEST_MODE_SOCKET_NAME:Ljava/lang/String; = "imstestrunnersocket"

.field static sTestMode:Z


# instance fields
.field private mGeolocationRegistrants:Landroid/os/RegistrantList;

.field private mHandoverStatusRegistrants:Landroid/os/RegistrantList;

.field private mInstanceId:Ljava/lang/Integer;

.field private mIsUnsolCallListPresent:Z

.field mLastNITZTimeInfo:Ljava/lang/Object;

.field protected mModifyCallRegistrants:Landroid/os/RegistrantList;

.field protected mMwiRegistrants:Landroid/os/RegistrantList;

.field private mParticipantStatusRegistrants:Landroid/os/RegistrantList;

.field private mRadioStateRegistrations:Landroid/os/RegistrantList;

.field mReceiver:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;

.field mReceiverThread:Ljava/lang/Thread;

.field private mRefreshConfInfoRegistrations:Landroid/os/RegistrantList;

.field mRequestMessagesPending:I

.field mRequestMessagesWaiting:I

.field mRequestsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/codeaurora/ims/IFRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

.field mSenderThread:Landroid/os/HandlerThread;

.field mSocket:Landroid/net/LocalSocket;

.field private mSrvStatusRegistrations:Landroid/os/RegistrantList;

.field private mSsaccRegistrants:Landroid/os/RegistrantList;

.field protected mSsnRegistrant:Landroid/os/Registrant;

.field mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTtyStatusRegistrants:Landroid/os/RegistrantList;

.field private mVoWiFiCallQualityRegistrants:Landroid/os/RegistrantList;

.field private mVopsRegistrants:Landroid/os/RegistrantList;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockTimeout:I


# direct methods
.method static synthetic -get0(Lorg/codeaurora/ims/ImsSenderRxr;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/io/InputStream;[B)I
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B

    .prologue
    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->readMessage(Ljava/io/InputStream;[B)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;
    .locals 1
    .param p1, "serial"    # I

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->findAndRemoveRequestFromList(I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lorg/codeaurora/ims/ImsSenderRxr;IZ)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->clearRequestsList(IZ)V

    return-void
.end method

.method static synthetic -wrap3(Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->disableSrvStatus()V

    return-void
.end method

.method static synthetic -wrap4(Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    sput-boolean v2, Lorg/codeaurora/ims/ImsSenderRxr;->sTestMode:Z

    .line 260
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "qmux_radio/rild_ims0"

    aput-object v1, v0, v2

    const-string/jumbo v1, "qmux_radio/rild_ims1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "qmux_radio/rild_ims2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lorg/codeaurora/ims/ImsSenderRxr;->SOCKET_NAME_IF:[Ljava/lang/String;

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 711
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsPhoneBaseCommands;-><init>(Landroid/content/Context;)V

    .line 235
    iput-boolean v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    .line 238
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    .line 242
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    .line 243
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Landroid/os/RegistrantList;

    .line 247
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 264
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    .line 265
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Landroid/os/RegistrantList;

    .line 266
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    .line 267
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Landroid/os/RegistrantList;

    .line 268
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRadioStateRegistrations:Landroid/os/RegistrantList;

    .line 269
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Landroid/os/RegistrantList;

    .line 270
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Landroid/os/RegistrantList;

    .line 271
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Landroid/os/RegistrantList;

    .line 272
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Landroid/os/RegistrantList;

    .line 273
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Landroid/os/RegistrantList;

    .line 713
    iput v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneType:I

    .line 714
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    .line 716
    const-string/jumbo v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 717
    .local v2, "pm":Landroid/os/PowerManager;
    const-string/jumbo v4, "ImsSenderRxr"

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 718
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 719
    const-string/jumbo v4, "ro.ril.wake_lock_timeout"

    .line 720
    const v5, 0xea60

    .line 719
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLockTimeout:I

    .line 721
    iput v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    .line 722
    iput v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 723
    const-string/jumbo v4, "persist.qualcomm.imstestrunner"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 724
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 723
    :cond_0
    sput-boolean v3, Lorg/codeaurora/ims/ImsSenderRxr;->sTestMode:Z

    .line 726
    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v4, "IFMsg_Sender"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSenderThread:Landroid/os/HandlerThread;

    .line 727
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 729
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 730
    .local v1, "looper":Landroid/os/Looper;
    new-instance v3, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    invoke-direct {v3, p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/os/Looper;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    .line 732
    const-string/jumbo v3, "Starting IFMsg_Rxr"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 733
    new-instance v3, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;

    invoke-direct {v3, p0}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mReceiver:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;

    .line 734
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mReceiver:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;

    const-string/jumbo v5, "IFMsg_Rxr"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mReceiverThread:Ljava/lang/Thread;

    .line 735
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 737
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 738
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 739
    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 709
    return-void
.end method

.method private acquireWakeLock()V
    .locals 6

    .prologue
    .line 751
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 752
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 753
    iget v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    .line 755
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->removeMessages(I)V

    .line 756
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 757
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    iget v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLockTimeout:I

    int-to-long v4, v3

    invoke-virtual {v1, v0, v4, v5}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 750
    return-void

    .line 751
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private clearRequestsList(IZ)V
    .locals 8
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 888
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 889
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 890
    .local v0, "count":I
    if-eqz p2, :cond_0

    .line 891
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WAKE_LOCK_TIMEOUT  mReqPending="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 892
    iget v5, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    .line 891
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 893
    const-string/jumbo v5, " mRequestList="

    .line 891
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 896
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 897
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/IFRequest;

    .line 898
    .local v2, "rr":Lorg/codeaurora/ims/IFRequest;
    if-eqz p2, :cond_1

    .line 899
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ": ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 900
    iget v5, v2, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v5}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v5

    .line 899
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 902
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 903
    invoke-virtual {v2}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 896
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 905
    .end local v2    # "rr":Lorg/codeaurora/ims/IFRequest;
    :cond_2
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 906
    const/4 v3, 0x0

    iput v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 910
    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    if-eqz v3, :cond_3

    .line 911
    iput-boolean v6, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    .line 912
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCallStateRegistrants:Landroid/os/RegistrantList;

    .line 913
    new-instance v4, Landroid/os/AsyncResult;

    .line 914
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->errorIdToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 913
    invoke-direct {v4, v7, v7, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 912
    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 886
    :cond_3
    return-void

    .line 888
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private copySrvStatusList([Lorg/codeaurora/ims/ServiceStatus;Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;)[Lorg/codeaurora/ims/ServiceStatus;
    .locals 7
    .param p1, "toList"    # [Lorg/codeaurora/ims/ServiceStatus;
    .param p2, "fromList"    # Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2635
    if-eqz p2, :cond_4

    .line 2636
    invoke-virtual {p2}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfoCount()I

    move-result v3

    new-array p1, v3, [Lorg/codeaurora/ims/ServiceStatus;

    .line 2637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Num of SrvUpdates = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfoCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2638
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfoCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 2639
    invoke-virtual {p2, v1}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfo(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    move-result-object v2

    .line 2640
    .local v2, "info":Lorg/codeaurora/ims/ImsQmiIF$Info;
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    .line 2641
    new-instance v3, Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {v3}, Lorg/codeaurora/ims/ServiceStatus;-><init>()V

    aput-object v3, p1, v1

    .line 2642
    aget-object v3, p1, v1

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getIsValid()Z

    move-result v4

    iput-boolean v4, v3, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    .line 2643
    aget-object v3, p1, v1

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getCallType()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    .line 2644
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getAccTechStatusCount()I

    move-result v3

    if-lt v3, v6, :cond_1

    .line 2645
    aget-object v3, p1, v1

    invoke-direct {p0, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->unpackAccTechStatus(Lorg/codeaurora/ims/ImsQmiIF$Info;Lorg/codeaurora/ims/ServiceStatus;)V

    .line 2654
    :goto_1
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 2655
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getRestrictCause()I

    move-result v3

    if-eqz v3, :cond_2

    .line 2656
    const-string/jumbo v3, "Partially Enabled Status due to Restrict Cause"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2657
    aget-object v3, p1, v1

    iput v6, v3, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 2661
    :goto_2
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 2662
    aget-object v3, p1, v1

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v4

    new-array v4, v4, [B

    iput-object v4, v3, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 2663
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    aget-object v4, p1, v1

    iget-object v4, v4, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/micro/ByteStringMicro;->copyTo([BI)V

    .line 2638
    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2647
    :cond_1
    aget-object v3, p1, v1

    new-array v4, v6, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v4, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 2648
    aget-object v3, p1, v1

    iget-object v3, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    new-instance v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v4}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v4, v3, v5

    .line 2649
    aget-object v3, p1, v1

    iget-object v3, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v0, v3, v5

    .line 2650
    .local v0, "act":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    const/16 v3, 0xe

    iput v3, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 2651
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getStatus()I

    move-result v3

    iput v3, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 2652
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getRestrictCause()I

    move-result v3

    iput v3, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    goto :goto_1

    .line 2659
    .end local v0    # "act":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    :cond_2
    aget-object v3, p1, v1

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getStatus()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus;->status:I

    goto :goto_2

    .line 2666
    :cond_3
    const-string/jumbo v3, "Null service status in list"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 2670
    .end local v1    # "i":I
    .end local v2    # "info":Lorg/codeaurora/ims/ImsQmiIF$Info;
    :cond_4
    return-object p1
.end method

.method private disableSrvStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2544
    const-string/jumbo v0, "disableSrvStatus"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2545
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 2546
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    .line 2547
    new-instance v1, Landroid/os/AsyncResult;

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    invoke-direct {v1, v3, v3, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2546
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2543
    :cond_0
    return-void
.end method

.method static errorIdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 1479
    sparse-switch p0, :sswitch_data_0

    .line 1508
    const-string/jumbo v0, "E_UNKNOWN"

    .line 1511
    .local v0, "errorMsg":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1481
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v0, "SUCCESS"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1484
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v0, "E_RADIO_NOT_AVAILABLE"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1487
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v0, "E_GENERIC_FAILURE"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1490
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v0, "E_REQUEST_NOT_SUPPORTED"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1493
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v0, "E_CANCELLED"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1496
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v0, "E_UNUSED"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1499
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v0, "E_INVALID_PARAMETER"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1502
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v0, "E_REJECTED_BY_REMOTE"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1505
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v0, "E_NETWORK_NOT_SUPPORTED"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1479
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0x10 -> :sswitch_5
        0x1b -> :sswitch_6
        0x1c -> :sswitch_7
        0x1e -> :sswitch_8
    .end sparse-switch
.end method

.method static facilityStringToInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    .line 3208
    if-nez p0, :cond_0

    .line 3209
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "invalid supplementary service"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3212
    :cond_0
    const-string/jumbo v0, "CLIP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3213
    const/4 v0, 0x1

    return v0

    .line 3215
    :cond_1
    const-string/jumbo v0, "COLP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3216
    const/4 v0, 0x2

    return v0

    .line 3246
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private findAndRemoveRequestFromList(I)Lorg/codeaurora/ims/IFRequest;
    .locals 5
    .param p1, "serial"    # I

    .prologue
    .line 919
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 920
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 921
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/IFRequest;

    .line 923
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    iget v3, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    if-ne v3, p1, :cond_1

    .line 924
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 925
    iget v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    if-lez v3, :cond_0

    .line 926
    iget v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    .line 927
    return-object v1

    .line 920
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "rr":Lorg/codeaurora/ims/IFRequest;
    :cond_2
    monitor-exit v4

    .line 932
    const/4 v3, 0x0

    return-object v3

    .line 919
    .end local v2    # "s":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getCallFailCauseForImsReason(I)I
    .locals 3
    .param p1, "imsReason"    # I

    .prologue
    .line 2940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "imsReason= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2943
    packed-switch p1, :pswitch_data_0

    .line 2958
    :pswitch_0
    const-string/jumbo v1, "Unsupported imsReason for ending call. Passing end cause as \'misc\'."

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2959
    const/16 v1, 0x3f5

    return v1

    .line 2945
    :pswitch_1
    const/16 v0, 0x1f6

    .line 2961
    .local v0, "failCause":I
    :goto_0
    return v0

    .line 2948
    .end local v0    # "failCause":I
    :pswitch_2
    const/16 v0, 0x1f5

    .line 2949
    .restart local v0    # "failCause":I
    goto :goto_0

    .line 2951
    .end local v0    # "failCause":I
    :pswitch_3
    const/16 v0, 0x1f7

    .line 2952
    .restart local v0    # "failCause":I
    goto :goto_0

    .line 2954
    .end local v0    # "failCause":I
    :pswitch_4
    const/16 v0, 0x1f8

    .line 2955
    .restart local v0    # "failCause":I
    goto :goto_0

    .line 2943
    nop

    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getImsReasonForCallFailCause(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)I
    .locals 4
    .param p1, "failCauseResp"    # Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .prologue
    .line 2799
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getFailcause()I

    move-result v0

    .line 2800
    .local v0, "failCause":I
    const/4 v1, 0x0

    .line 2801
    .local v1, "imsCode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Call fail cause= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2803
    sparse-switch v0, :sswitch_data_0

    .line 2933
    const/4 v1, 0x0

    .line 2936
    :goto_0
    :sswitch_0
    return v1

    .line 2807
    :sswitch_1
    const/16 v1, 0x141

    .line 2808
    goto :goto_0

    .line 2810
    :sswitch_2
    const/16 v1, 0x14b

    .line 2811
    goto :goto_0

    .line 2813
    :sswitch_3
    const/16 v1, 0x14c

    .line 2814
    goto :goto_0

    .line 2816
    :sswitch_4
    const/16 v1, 0x14d

    .line 2817
    goto :goto_0

    .line 2819
    :sswitch_5
    const/16 v1, 0x14e

    .line 2820
    goto :goto_0

    .line 2822
    :sswitch_6
    const/16 v1, 0x14f

    .line 2823
    goto :goto_0

    .line 2825
    :sswitch_7
    const/16 v1, 0x150

    .line 2826
    goto :goto_0

    .line 2828
    :sswitch_8
    const/16 v1, 0x151

    .line 2829
    goto :goto_0

    .line 2831
    :sswitch_9
    const/16 v1, 0x152

    .line 2832
    goto :goto_0

    .line 2834
    :sswitch_a
    const/16 v1, 0x153

    .line 2835
    goto :goto_0

    .line 2837
    :sswitch_b
    const/16 v1, 0x154

    .line 2838
    goto :goto_0

    .line 2840
    :sswitch_c
    const/16 v1, 0x155

    .line 2841
    goto :goto_0

    .line 2852
    :sswitch_d
    const/16 v1, 0x160

    .line 2853
    goto :goto_0

    .line 2855
    :sswitch_e
    const/16 v1, 0x161

    .line 2856
    goto :goto_0

    .line 2867
    :sswitch_f
    const/16 v1, 0x169

    .line 2868
    goto :goto_0

    .line 2870
    :sswitch_10
    const/16 v1, 0x16a

    .line 2871
    goto :goto_0

    .line 2874
    :sswitch_11
    const/16 v1, 0x191

    .line 2875
    goto :goto_0

    .line 2877
    :sswitch_12
    const/16 v1, 0x192

    .line 2878
    goto :goto_0

    .line 2880
    :sswitch_13
    const/16 v1, 0x193

    .line 2881
    goto :goto_0

    .line 2883
    :sswitch_14
    const/16 v1, 0x194

    .line 2884
    goto :goto_0

    .line 2887
    :sswitch_15
    const/16 v1, 0x1f5

    .line 2888
    goto :goto_0

    .line 2890
    :sswitch_16
    const/16 v1, 0x152

    .line 2891
    goto :goto_0

    .line 2893
    :sswitch_17
    const/16 v1, 0x150

    .line 2894
    goto :goto_0

    .line 2896
    :sswitch_18
    const/16 v1, 0x3f6

    .line 2897
    goto :goto_0

    .line 2899
    :sswitch_19
    const/16 v1, 0xf1

    .line 2900
    goto :goto_0

    .line 2902
    :sswitch_1a
    const/16 v1, 0x92

    .line 2903
    goto :goto_0

    .line 2905
    :sswitch_1b
    const/16 v1, 0x95

    .line 2906
    goto :goto_0

    .line 2908
    :sswitch_1c
    const/16 v1, 0x1f9

    .line 2909
    goto :goto_0

    .line 2911
    :sswitch_1d
    const/16 v1, 0x16b

    .line 2912
    goto :goto_0

    .line 2914
    :sswitch_1e
    const/16 v1, 0x16c

    .line 2915
    goto :goto_0

    .line 2917
    :sswitch_1f
    const/16 v1, 0x3f7

    .line 2918
    goto :goto_0

    .line 2920
    :sswitch_20
    const/16 v1, 0x3f8

    .line 2921
    goto :goto_0

    .line 2923
    :sswitch_21
    const/16 v1, 0x1f

    .line 2924
    goto :goto_0

    .line 2803
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_15
        0x11 -> :sswitch_16
        0x1f -> :sswitch_21
        0xf1 -> :sswitch_19
        0x145 -> :sswitch_1d
        0x146 -> :sswitch_1e
        0x17e -> :sswitch_1b
        0x1f7 -> :sswitch_1c
        0x1f9 -> :sswitch_1a
        0x3f2 -> :sswitch_17
        0x3f6 -> :sswitch_18
        0x3f7 -> :sswitch_1f
        0x3f8 -> :sswitch_20
        0x7d1 -> :sswitch_1
        0x7d2 -> :sswitch_2
        0x7d3 -> :sswitch_3
        0x7d4 -> :sswitch_4
        0x7d5 -> :sswitch_5
        0x7d6 -> :sswitch_6
        0x7d7 -> :sswitch_7
        0x7d8 -> :sswitch_8
        0x7d9 -> :sswitch_9
        0x7da -> :sswitch_a
        0x7db -> :sswitch_b
        0x7dc -> :sswitch_c
        0x7dd -> :sswitch_0
        0x7de -> :sswitch_0
        0x7df -> :sswitch_0
        0x7e0 -> :sswitch_d
        0x7e1 -> :sswitch_e
        0x7e2 -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e4 -> :sswitch_0
        0x7e5 -> :sswitch_f
        0x7e6 -> :sswitch_10
        0xbb9 -> :sswitch_11
        0xbba -> :sswitch_12
        0xbbb -> :sswitch_13
        0xbbc -> :sswitch_14
    .end sparse-switch
.end method

.method private handleSsacInfo([B)Ljava/lang/Object;
    .locals 4
    .param p1, "ssacInfo"    # [B

    .prologue
    const/4 v3, 0x0

    .line 2519
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 2521
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2522
    :catch_0
    move-exception v0

    .line 2523
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v1, "InvalidProtocolBufferException in handleSsacInfo parsing"

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2526
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :cond_0
    return-object v3
.end method

.method private handleVopsInfo([B)Ljava/lang/Object;
    .locals 4
    .param p1, "vopsInfo"    # [B

    .prologue
    const/4 v3, 0x0

    .line 2508
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 2510
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2511
    :catch_0
    move-exception v0

    .line 2512
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v1, "InvalidProtocolBufferException in handleVopsInfo parsing"

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2515
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :cond_0
    return-object v3
.end method

.method static msgIdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 1516
    sparse-switch p0, :sswitch_data_0

    .line 1658
    const-string/jumbo v0, "<unknown message>"

    return-object v0

    .line 1518
    :sswitch_0
    const-string/jumbo v0, "GET_CURRENT_CALLS"

    return-object v0

    .line 1520
    :sswitch_1
    const-string/jumbo v0, "DIAL"

    return-object v0

    .line 1522
    :sswitch_2
    const-string/jumbo v0, "REQUEST_ANSWER"

    return-object v0

    .line 1524
    :sswitch_3
    const-string/jumbo v0, "REQUEST_DEFLECT_CALL"

    return-object v0

    .line 1526
    :sswitch_4
    const-string/jumbo v0, "REQUEST_ADD_PARTICIPANT"

    return-object v0

    .line 1528
    :sswitch_5
    const-string/jumbo v0, "HANGUP"

    return-object v0

    .line 1530
    :sswitch_6
    const-string/jumbo v0, "HANGUP_WAITING_OR_BACKGROUND"

    return-object v0

    .line 1532
    :sswitch_7
    const-string/jumbo v0, "HANGUP_FOREGROUND_RESUME_BACKGROUND"

    return-object v0

    .line 1534
    :sswitch_8
    const-string/jumbo v0, "ImsQmiIF.REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object v0

    .line 1536
    :sswitch_9
    const-string/jumbo v0, "CONFERENCE"

    return-object v0

    .line 1538
    :sswitch_a
    const-string/jumbo v0, "UDUB"

    return-object v0

    .line 1540
    :sswitch_b
    const-string/jumbo v0, "REQUEST_SEND_UI_TTY_MODE"

    return-object v0

    .line 1542
    :sswitch_c
    const-string/jumbo v0, "MODIFY_CALL_INITIATE"

    return-object v0

    .line 1544
    :sswitch_d
    const-string/jumbo v0, "MODIFY_CALL_CONFIRM"

    return-object v0

    .line 1546
    :sswitch_e
    const-string/jumbo v0, "UNSOL_MODIFY_CALL"

    return-object v0

    .line 1548
    :sswitch_f
    const-string/jumbo v0, "LAST_CALL_FAIL_CAUSE"

    return-object v0

    .line 1550
    :sswitch_10
    const-string/jumbo v0, "DTMF"

    return-object v0

    .line 1552
    :sswitch_11
    const-string/jumbo v0, "DTMF_START"

    return-object v0

    .line 1554
    :sswitch_12
    const-string/jumbo v0, "DTMF_STOP"

    return-object v0

    .line 1556
    :sswitch_13
    const-string/jumbo v0, "ImsQmiIF.REQUEST_EXPLICIT_CALL_TRANSFER"

    return-object v0

    .line 1558
    :sswitch_14
    const-string/jumbo v0, "ImsQmiIF.REQUEST_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 1560
    :sswitch_15
    const-string/jumbo v0, "REQUEST_IMS_REGISTRATION_STATE"

    return-object v0

    .line 1562
    :sswitch_16
    const-string/jumbo v0, "REQUEST_QUERY_CLIP"

    return-object v0

    .line 1564
    :sswitch_17
    const-string/jumbo v0, "REQUEST_QUERY_SERVICE_STATUS"

    return-object v0

    .line 1566
    :sswitch_18
    const-string/jumbo v0, "REQUEST_SET_SERVICE_STATUS"

    return-object v0

    .line 1568
    :sswitch_19
    const-string/jumbo v0, "REQUEST_GET_CLIR"

    return-object v0

    .line 1570
    :sswitch_1a
    const-string/jumbo v0, "REQUEST_SET_CLIR"

    return-object v0

    .line 1572
    :sswitch_1b
    const-string/jumbo v0, "REQUEST_QUERY_CALL_FORWARD_STATUS"

    return-object v0

    .line 1574
    :sswitch_1c
    const-string/jumbo v0, "REQUEST_SET_CALL_FORWARD_STATUS"

    return-object v0

    .line 1576
    :sswitch_1d
    const-string/jumbo v0, "REQUEST_QUERY_CALL_WAITING"

    return-object v0

    .line 1578
    :sswitch_1e
    const-string/jumbo v0, "REQUEST_SET_CALL_WAITING"

    return-object v0

    .line 1580
    :sswitch_1f
    const-string/jumbo v0, "REQUEST_SET_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 1582
    :sswitch_20
    const-string/jumbo v0, "REQUEST_SUPP_SVC_STATUS"

    return-object v0

    .line 1584
    :sswitch_21
    const-string/jumbo v0, "REQUEST_GET_RTP_STATISTICS"

    return-object v0

    .line 1586
    :sswitch_22
    const-string/jumbo v0, "REQUEST_GET_RTP_ERROR_STATISTICS"

    return-object v0

    .line 1588
    :sswitch_23
    const-string/jumbo v0, "REQUEST_GET_WIFI_CALLING_STATUS"

    return-object v0

    .line 1590
    :sswitch_24
    const-string/jumbo v0, "REQUEST_SET_WIFI_CALLING_STATUS"

    return-object v0

    .line 1592
    :sswitch_25
    const-string/jumbo v0, "REQUEST_GET_COLR"

    return-object v0

    .line 1594
    :sswitch_26
    const-string/jumbo v0, "REQUEST_SET_COLR"

    return-object v0

    .line 1596
    :sswitch_27
    const-string/jumbo v0, "REQUEST_HOLD"

    return-object v0

    .line 1598
    :sswitch_28
    const-string/jumbo v0, "REQUEST_RESUME"

    return-object v0

    .line 1600
    :sswitch_29
    const-string/jumbo v0, "REQUEST_SET_IMS_CONFIG"

    return-object v0

    .line 1602
    :sswitch_2a
    const-string/jumbo v0, "REQUEST_GET_IMS_CONFIG"

    return-object v0

    .line 1604
    :sswitch_2b
    const-string/jumbo v0, "REQUEST_SEND_GEOLOCATION_INFO"

    return-object v0

    .line 1606
    :sswitch_2c
    const-string/jumbo v0, "REQUEST_GET_VOPS_INFO"

    return-object v0

    .line 1608
    :sswitch_2d
    const-string/jumbo v0, "REQUEST_GET_SSAC_INFO"

    return-object v0

    .line 1610
    :sswitch_2e
    const-string/jumbo v0, "REQUEST_SET_VOLTE_PREF"

    return-object v0

    .line 1612
    :sswitch_2f
    const-string/jumbo v0, "REQUEST_GET_VOLTE_PREF"

    return-object v0

    .line 1614
    :sswitch_30
    const-string/jumbo v0, "REQUEST_GET_HANDOVER_CONFIG"

    return-object v0

    .line 1616
    :sswitch_31
    const-string/jumbo v0, "REQUEST_SET_HANDOVER_CONFIG"

    return-object v0

    .line 1618
    :sswitch_32
    const-string/jumbo v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    return-object v0

    .line 1620
    :sswitch_33
    const-string/jumbo v0, "UNSOL_RESPONSE_CALL_STATE_CHANGED"

    return-object v0

    .line 1622
    :sswitch_34
    const-string/jumbo v0, "UNSOL_CALL_RING"

    return-object v0

    .line 1624
    :sswitch_35
    const-string/jumbo v0, "UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 1626
    :sswitch_36
    const-string/jumbo v0, "UNSOL_RINGBACK_TONE"

    return-object v0

    .line 1628
    :sswitch_37
    const-string/jumbo v0, "UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 1630
    :sswitch_38
    const-string/jumbo v0, "REQUEST_IMS_REG_STATE_CHANGE"

    return-object v0

    .line 1632
    :sswitch_39
    const-string/jumbo v0, "UNSOL_RESPONSE_HANDOVER"

    return-object v0

    .line 1634
    :sswitch_3a
    const-string/jumbo v0, "UNSOL_REFRESH_CONF_INFO"

    return-object v0

    .line 1636
    :sswitch_3b
    const-string/jumbo v0, "UNSOL_SRV_STATUS_UPDATE"

    return-object v0

    .line 1638
    :sswitch_3c
    const-string/jumbo v0, "UNSOL_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 1640
    :sswitch_3d
    const-string/jumbo v0, "UNSOL_TTY_NOTIFICATION"

    return-object v0

    .line 1642
    :sswitch_3e
    const-string/jumbo v0, "UNSOL_RADIO_STATE_CHANGED"

    return-object v0

    .line 1644
    :sswitch_3f
    const-string/jumbo v0, "UNSOL_MWI"

    return-object v0

    .line 1646
    :sswitch_40
    const-string/jumbo v0, "UNSOL_REQUEST_GEOLOCATION"

    return-object v0

    .line 1648
    :sswitch_41
    const-string/jumbo v0, "UNSOL_REFRESH_VICE_INFO"

    return-object v0

    .line 1650
    :sswitch_42
    const-string/jumbo v0, "UNSOL_VOWIFI_CALL_QUALITY"

    return-object v0

    .line 1652
    :sswitch_43
    const-string/jumbo v0, "UNSOL_VOPS_CHANGED"

    return-object v0

    .line 1654
    :sswitch_44
    const-string/jumbo v0, "UNSOL_SSAC_CHANGED"

    return-object v0

    .line 1656
    :sswitch_45
    const-string/jumbo v0, "UNSOL_PARTICIPANT_STATUS_INFO"

    return-object v0

    .line 1516
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_5
        0x5 -> :sswitch_f
        0x6 -> :sswitch_0
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_14
        0xc -> :sswitch_13
        0xd -> :sswitch_10
        0xe -> :sswitch_11
        0xf -> :sswitch_12
        0x10 -> :sswitch_a
        0x11 -> :sswitch_c
        0x12 -> :sswitch_d
        0x13 -> :sswitch_16
        0x14 -> :sswitch_19
        0x15 -> :sswitch_1a
        0x16 -> :sswitch_1b
        0x17 -> :sswitch_1c
        0x18 -> :sswitch_1d
        0x19 -> :sswitch_1e
        0x1a -> :sswitch_38
        0x1b -> :sswitch_1f
        0x1c -> :sswitch_4
        0x1d -> :sswitch_17
        0x1e -> :sswitch_18
        0x1f -> :sswitch_20
        0x20 -> :sswitch_3
        0x21 -> :sswitch_25
        0x22 -> :sswitch_26
        0x25 -> :sswitch_27
        0x26 -> :sswitch_28
        0x27 -> :sswitch_b
        0x28 -> :sswitch_21
        0x29 -> :sswitch_22
        0x2a -> :sswitch_23
        0x2b -> :sswitch_24
        0x2c -> :sswitch_29
        0x2d -> :sswitch_2a
        0x2e -> :sswitch_2b
        0x30 -> :sswitch_2c
        0x31 -> :sswitch_2d
        0x32 -> :sswitch_2e
        0x33 -> :sswitch_2f
        0x34 -> :sswitch_30
        0x35 -> :sswitch_31
        0xc9 -> :sswitch_33
        0xca -> :sswitch_34
        0xcb -> :sswitch_36
        0xcc -> :sswitch_32
        0xcd -> :sswitch_35
        0xce -> :sswitch_37
        0xcf -> :sswitch_e
        0xd0 -> :sswitch_39
        0xd1 -> :sswitch_3a
        0xd2 -> :sswitch_3b
        0xd3 -> :sswitch_3c
        0xd4 -> :sswitch_3d
        0xd5 -> :sswitch_3e
        0xd6 -> :sswitch_3f
        0xd7 -> :sswitch_41
        0xd8 -> :sswitch_40
        0xd9 -> :sswitch_42
        0xda -> :sswitch_43
        0xdb -> :sswitch_44
        0xdc -> :sswitch_45
    .end sparse-switch
.end method

.method private processDial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Z)[B
    .locals 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p4, "isEncrypted"    # Z

    .prologue
    .line 1798
    const/4 v5, 0x0

    .line 1799
    .local v5, "isConferenceUri":Z
    if-eqz p3, :cond_0

    iget-object v7, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 1800
    iget-object v7, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 1801
    const-string/jumbo v8, "isConferenceUri"

    .line 1800
    invoke-virtual {p3, v7, v8}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1802
    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1803
    const/4 v5, 0x1

    .line 1807
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    .line 1808
    .local v4, "isCallPull":Z
    if-eqz p3, :cond_1

    .line 1809
    invoke-virtual {p3}, Lorg/codeaurora/ims/CallDetails;->getCallPull()Z

    move-result v4

    .line 1812
    .end local v4    # "isCallPull":Z
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "process dial isConfererenceUri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",isCallPull = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1813
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;-><init>()V

    .line 1814
    .local v0, "callDetailsIF":Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    if-eqz p3, :cond_2

    .line 1815
    iget v7, p3, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    invoke-virtual {v0, v7}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallDomain(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1816
    iget v7, p3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-virtual {v0, v7}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1818
    iget-object v7, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 1819
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v7, v7

    if-ge v3, v7, :cond_2

    .line 1820
    iget-object v7, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v0, v7}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->addExtras(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1821
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Packing extra string \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1819
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1827
    .end local v3    # "i":I
    :cond_2
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$Dial;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$Dial;-><init>()V

    .line 1828
    .local v1, "dialIF":Lorg/codeaurora/ims/ImsQmiIF$Dial;
    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 1829
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setCallDetails(Lorg/codeaurora/ims/ImsQmiIF$CallDetails;)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 1830
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setClir(I)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 1831
    packed-switch p2, :pswitch_data_0

    .line 1838
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 1842
    :goto_1
    if-eqz v5, :cond_3

    .line 1843
    invoke-virtual {v1, v5}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setIsConferenceUri(Z)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 1846
    :cond_3
    if-eqz v4, :cond_4

    .line 1847
    invoke-virtual {v1, v4}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setIsCallPull(Z)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 1850
    :cond_4
    invoke-virtual {v1, p4}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setIsEncrypted(Z)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 1852
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->toByteArray()[B

    move-result-object v2

    .line 1853
    .local v2, "dialb":[B
    return-object v2

    .line 1833
    .end local v2    # "dialb":[B
    :pswitch_0
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    goto :goto_1

    .line 1831
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static readMessage(Ljava/io/InputStream;[B)I
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 546
    const/4 v2, 0x0

    .line 547
    .local v2, "offset":I
    const/4 v3, 0x4

    .line 549
    .local v3, "remaining":I
    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 551
    .local v0, "countRead":I
    if-gez v0, :cond_1

    .line 552
    const-string/jumbo v4, "ImsSenderRxr"

    const-string/jumbo v5, "Hit EOS reading message length"

    invoke-static {v4, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    return v7

    .line 556
    :cond_1
    add-int/2addr v2, v0

    .line 557
    sub-int/2addr v3, v0

    .line 558
    if-gtz v3, :cond_0

    .line 560
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    .line 561
    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 560
    or-int/2addr v4, v5

    .line 562
    const/4 v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    .line 560
    or-int/2addr v4, v5

    .line 563
    const/4 v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    .line 560
    or-int v1, v4, v5

    .line 566
    .local v1, "messageLength":I
    const/4 v2, 0x0

    .line 567
    move v3, v1

    .line 569
    :cond_2
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 571
    if-gez v0, :cond_3

    .line 572
    const-string/jumbo v4, "ImsSenderRxr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Hit EOS reading message.  messageLength="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 573
    const-string/jumbo v6, " remaining="

    .line 572
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    return v7

    .line 577
    :cond_3
    add-int/2addr v2, v0

    .line 578
    sub-int/2addr v3, v0

    .line 579
    if-gtz v3, :cond_2

    .line 581
    return v1
.end method

.method private releaseWakeLockIfDone()V
    .locals 3

    .prologue
    .line 762
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 763
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    iget v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    if-nez v0, :cond_0

    .line 765
    iget v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    if-nez v0, :cond_0

    .line 766
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->removeMessages(I)V

    .line 767
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 761
    return-void

    .line 762
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private responseCallFailCause([B)Ljava/lang/Object;
    .locals 4
    .param p1, "callFailB"    # [B

    .prologue
    .line 2183
    const-string/jumbo v2, " responseCallFailCause "

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2184
    const/4 v0, 0x0

    .line 2187
    .local v0, "callfail":Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v0

    .line 2189
    .local v0, "callfail":Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "callfail cause response"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2194
    .end local v0    # "callfail":Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    :goto_0
    return-object v0

    .line 2190
    :catch_0
    move-exception v1

    .line 2191
    .local v1, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, " Message parsing "

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2192
    const-string/jumbo v2, "InvalidProtocolBufferException "

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseCallRingBack([B)Ljava/lang/Object;
    .locals 5
    .param p1, "ringBackB"    # [B

    .prologue
    .line 2199
    const/4 v3, 0x1

    new-array v1, v3, [I

    .line 2200
    .local v1, "response":[I
    const-string/jumbo v3, " responseCallRingBack "

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2203
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;

    move-result-object v2

    .line 2206
    .local v2, "ringbackTone":Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->getFlag()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    .line 2207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "responseCallRingBack "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2212
    .end local v2    # "ringbackTone":Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
    :goto_0
    return-object v1

    .line 2208
    :catch_0
    move-exception v0

    .line 2209
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, " Message parsing "

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2210
    const-string/jumbo v3, "InvalidProtocolBufferException "

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseConfig([B)Ljava/lang/Object;
    .locals 4
    .param p1, "response"    # [B

    .prologue
    .line 2368
    const/4 v0, 0x0

    .line 2370
    .local v0, "config":Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    move-result-object v0

    .line 2371
    .local v0, "config":Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasBoolValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2372
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getBoolValue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 2373
    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasIntValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2374
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getIntValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 2375
    :cond_1
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasStringValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2376
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getStringValue()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2377
    :cond_2
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasErrorCause()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2378
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getErrorCause()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2382
    .end local v0    # "config":Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    :catch_0
    move-exception v2

    .line 2383
    .local v2, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, "InvalidProtocolBufferException in responseHandover parsing"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2385
    .end local v2    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :cond_3
    :goto_0
    return-object v0

    .line 2380
    :catch_1
    move-exception v1

    .line 2381
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "NullPointerException in responseConfig"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseGetHanoverConfig([B)Ljava/lang/Object;
    .locals 5
    .param p1, "message"    # [B

    .prologue
    .line 1443
    const/4 v1, 0x0

    .line 1444
    .local v1, "handoverConfigMsg":Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;
    if-eqz p1, :cond_1

    array-length v3, p1

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    .line 1446
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;

    move-result-object v1

    .line 1447
    .local v1, "handoverConfigMsg":Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->hasHoConfig()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1448
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->getHoConfig()I

    move-result v2

    .line 1449
    .local v2, "hoConfig":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "responseGetHanoverConfig, hoConfig = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1450
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 1452
    .end local v2    # "hoConfig":I
    :cond_0
    const-string/jumbo v3, "responseGetHanoverConfig failed"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1460
    .end local v1    # "handoverConfigMsg":Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;
    :goto_0
    return-object v1

    .line 1454
    :catch_0
    move-exception v0

    .line 1455
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, " Message parsing. InvalidProtocolBufferException "

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1458
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .local v1, "handoverConfigMsg":Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;
    :cond_1
    const-string/jumbo v3, "responseGetHanoverConfig failed, message is null"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseGetRtpErrorStatistics([B)Ljava/lang/Object;
    .locals 7
    .param p1, "message"    # [B

    .prologue
    const/4 v6, 0x0

    .line 1408
    if-nez p1, :cond_0

    .line 1409
    const-string/jumbo v4, "responseGetRtpErrorStatistics failed, message is null"

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1425
    :goto_0
    return-object v6

    .line 1413
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;

    move-result-object v1

    .line 1414
    .local v1, "rtpStatData":Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->hasCount()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1415
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->getCount()I

    move-result v4

    int-to-long v2, v4

    .line 1416
    .local v2, "perCount":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "responseGetRtpErrorStatistics, perCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1417
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    return-object v4

    .line 1419
    .end local v2    # "perCount":J
    :cond_1
    const-string/jumbo v4, "responseGetRtpErrorStatistics failed"

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1421
    .end local v1    # "rtpStatData":Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;
    :catch_0
    move-exception v0

    .line 1422
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v4, " Message parsing. InvalidProtocolBufferException "

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseGetRtpStatistics([B)Ljava/lang/Object;
    .locals 7
    .param p1, "message"    # [B

    .prologue
    const/4 v6, 0x0

    .line 1387
    if-nez p1, :cond_0

    .line 1388
    const-string/jumbo v4, "responseGetRtpStatistics failed, message is null"

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1404
    :goto_0
    return-object v6

    .line 1392
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;

    move-result-object v1

    .line 1393
    .local v1, "rtpStatData":Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->hasCount()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1394
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->getCount()I

    move-result v4

    int-to-long v2, v4

    .line 1395
    .local v2, "packetCount":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "responseGetRtpStatistics, packetCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1396
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    return-object v4

    .line 1398
    .end local v2    # "packetCount":J
    :cond_1
    const-string/jumbo v4, "responseGetRtpStatistics failed"

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1400
    .end local v1    # "rtpStatData":Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;
    :catch_0
    move-exception v0

    .line 1401
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v4, " Message parsing. InvalidProtocolBufferException "

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseGetWifiCallingStatus([B)Ljava/lang/Object;
    .locals 4
    .param p1, "message"    # [B

    .prologue
    .line 1429
    const/4 v1, 0x0

    .line 1430
    .local v1, "wifiCallingInfo":Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 1432
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1439
    .end local v1    # "wifiCallingInfo":Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;
    :goto_0
    return-object v1

    .line 1433
    .restart local v1    # "wifiCallingInfo":Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;
    :catch_0
    move-exception v0

    .line 1434
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, " Message parsing. InvalidProtocolBufferException "

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1437
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :cond_0
    const-string/jumbo v2, "responseGetWifiCallingStatus failed, message is null"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseModifyCall([B)Ljava/lang/Object;
    .locals 6
    .param p1, "message"    # [B

    .prologue
    .line 1367
    new-instance v0, Lorg/codeaurora/ims/CallModify;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallModify;-><init>()V

    .line 1369
    .local v0, "callModify":Lorg/codeaurora/ims/CallModify;
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    move-result-object v1

    .line 1370
    .local v1, "callModifyIF":Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    iget-object v4, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallType()I

    move-result v5

    iput v5, v4, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 1371
    iget-object v4, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallDomain()I

    move-result v5

    iput v5, v4, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 1372
    iget-object v4, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallSubstate()I

    move-result v5

    iput v5, v4, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 1373
    iget-object v4, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getMediaId()I

    move-result v5

    iput v5, v4, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 1374
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getExtrasList()Ljava/util/List;

    move-result-object v3

    .line 1375
    .local v3, "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v5, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 1376
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallIndex()I

    move-result v4

    iput v4, v0, Lorg/codeaurora/ims/CallModify;->call_index:I

    .line 1377
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasError()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getError()I

    move-result v4

    :goto_0
    iput v4, v0, Lorg/codeaurora/ims/CallModify;->error:I

    .line 1379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "responseModifyCall "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1383
    .end local v1    # "callModifyIF":Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .end local v3    # "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-object v0

    .line 1378
    .restart local v1    # "callModifyIF":Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .restart local v3    # "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1380
    .end local v1    # "callModifyIF":Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .end local v3    # "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 1381
    .local v2, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v4, " Message parsing. InvalidProtocolBufferException "

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private responseSipErrorInfo([B)Ljava/lang/Object;
    .locals 3
    .param p1, "message"    # [B

    .prologue
    .line 1464
    const/4 v1, 0x0

    .line 1465
    .local v1, "sipErrorInfo":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 1467
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1474
    .end local v1    # "sipErrorInfo":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    :goto_0
    return-object v1

    .line 1468
    .restart local v1    # "sipErrorInfo":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    :catch_0
    move-exception v0

    .line 1469
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, " Message parsing. InvalidProtocolBufferException "

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1472
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :cond_0
    const-string/jumbo v2, "responseSipErrorInfo failed, message is null"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 12
    .param p1, "req"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x0

    .line 1093
    if-nez p2, :cond_0

    .line 1094
    const-string/jumbo v10, ""

    return-object v10

    .line 1099
    :cond_0
    instance-of v10, p2, [I

    if-eqz v10, :cond_2

    move-object v5, p2

    .line 1100
    check-cast v5, [I

    .line 1101
    .local v5, "intArray":[I
    array-length v6, v5

    .line 1102
    .local v6, "length":I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "{"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1103
    .local v8, "sb":Ljava/lang/StringBuilder;
    if-lez v6, :cond_1

    .line 1105
    const/4 v3, 0x1

    .local v3, "i":I
    aget v10, v5, v11

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v4, v3

    .line 1106
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 1107
    const-string/jumbo v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget v11, v5, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 1110
    .end local v4    # "i":I
    :cond_1
    const-string/jumbo v10, "}"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1136
    .end local v5    # "intArray":[I
    .end local v6    # "length":I
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .local v7, "s":Ljava/lang/String;
    :goto_1
    return-object v7

    .line 1112
    .end local v7    # "s":Ljava/lang/String;
    :cond_2
    instance-of v10, p2, [Ljava/lang/String;

    if-eqz v10, :cond_4

    move-object v9, p2

    .line 1113
    check-cast v9, [Ljava/lang/String;

    .line 1114
    .local v9, "strings":[Ljava/lang/String;
    array-length v6, v9

    .line 1115
    .restart local v6    # "length":I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "{"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1116
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    if-lez v6, :cond_3

    .line 1118
    const/4 v3, 0x1

    .restart local v3    # "i":I
    aget-object v10, v9, v11

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v3

    .line 1119
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v6, :cond_3

    .line 1120
    const-string/jumbo v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-object v11, v9, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    .line 1123
    .end local v4    # "i":I
    :cond_3
    const-string/jumbo v10, "}"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "s":Ljava/lang/String;
    goto :goto_1

    .line 1125
    .end local v6    # "length":I
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "strings":[Ljava/lang/String;
    :cond_4
    const/16 v10, 0xc9

    if-eq p1, v10, :cond_5

    .line 1126
    const/4 v10, 0x6

    if-ne p1, v10, :cond_7

    :cond_5
    move-object v0, p2

    .line 1127
    check-cast v0, Ljava/util/ArrayList;

    .line 1128
    .local v0, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, " "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1129
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "dc$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/DriverCallIms;

    .line 1130
    .local v1, "dc":Lorg/codeaurora/ims/DriverCallIms;
    const-string/jumbo v10, "["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1132
    .end local v1    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    :cond_6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "s":Ljava/lang/String;
    goto :goto_1

    .line 1134
    .end local v0    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .end local v2    # "dc$iterator":Ljava/util/Iterator;
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "s":Ljava/lang/String;
    goto :goto_1
.end method

.method private setCallModify(Lorg/codeaurora/ims/CallModify;)[B
    .locals 5
    .param p1, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    .line 2058
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCallModify callModify= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2059
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;-><init>()V

    .line 2060
    .local v0, "callDetailsIF":Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    iget-object v3, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 2061
    iget-object v3, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallDomain(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 2063
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;-><init>()V

    .line 2064
    .local v1, "callModifyIF":Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->setCallDetails(Lorg/codeaurora/ims/ImsQmiIF$CallDetails;)Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    .line 2065
    iget v3, p1, Lorg/codeaurora/ims/CallModify;->call_index:I

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->setCallIndex(I)Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    .line 2070
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->toByteArray()[B

    move-result-object v2

    .line 2071
    .local v2, "callModifyb":[B
    return-object v2
.end method

.method private static toCallSubstateConstants(I)I
    .locals 1
    .param p0, "callSubstate"    # I

    .prologue
    .line 3289
    packed-switch p0, :pswitch_data_0

    .line 3300
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 3291
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 3293
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 3295
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 3297
    :pswitch_4
    const/16 v0, 0x8

    return v0

    .line 3289
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private unpackAccTechStatus(Lorg/codeaurora/ims/ImsQmiIF$Info;Lorg/codeaurora/ims/ServiceStatus;)V
    .locals 5
    .param p1, "info"    # Lorg/codeaurora/ims/ImsQmiIF$Info;
    .param p2, "srvSt"    # Lorg/codeaurora/ims/ServiceStatus;

    .prologue
    .line 2552
    const/4 v1, 0x0

    .line 2554
    .local v1, "numAccessTechUpdate":I
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getAccTechStatusCount()I

    move-result v1

    .line 2556
    new-array v3, v1, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 2558
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2559
    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getAccTechStatus(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    move-result-object v2

    .line 2560
    .local v2, "update":Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    new-instance v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v4}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v4, v3, v0

    .line 2562
    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v0

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getNetworkMode()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 2563
    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v0

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getStatus()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 2564
    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v0

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getRestrictionCause()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 2565
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getRegistered()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2567
    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v0

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getRegistered()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getState()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 2574
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " networkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v4, v4, v0

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2575
    const-string/jumbo v4, " status = "

    .line 2574
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2575
    iget-object v4, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v4, v4, v0

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 2574
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2576
    const-string/jumbo v4, " restrictCause = "

    .line 2574
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2576
    iget-object v4, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v4, v4, v0

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 2574
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2577
    const-string/jumbo v4, " registered = "

    .line 2574
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2577
    iget-object v4, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v4, v4, v0

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 2574
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2558
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2570
    :cond_0
    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v0

    const/4 v4, 0x2

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 2572
    const-string/jumbo v3, "Registered not sent"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 2551
    .end local v2    # "update":Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    :cond_1
    return-void
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;I)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callType"    # I

    .prologue
    .line 1877
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "acceptCall callType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1878
    move v2, p2

    .line 1879
    .local v2, "callTypeIF":I
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$Answer;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$Answer;-><init>()V

    .line 1880
    .local v1, "answerIF":Lorg/codeaurora/ims/ImsQmiIF$Answer;
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$Answer;

    .line 1881
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->toByteArray()[B

    move-result-object v0

    .line 1883
    .local v0, "ansb":[B
    const/4 v3, 0x3

    invoke-virtual {p0, v3, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1876
    return-void
.end method

.method public acceptCall(Landroid/os/Message;II)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callType"    # I
    .param p3, "presentation"    # I

    .prologue
    .line 1945
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "acceptCall callType= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " presentation= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1946
    move v2, p2

    .line 1947
    .local v2, "callTypeIF":I
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$Answer;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$Answer;-><init>()V

    .line 1948
    .local v1, "answerIF":Lorg/codeaurora/ims/ImsQmiIF$Answer;
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$Answer;

    .line 1949
    invoke-virtual {v1, p3}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Answer;

    .line 1950
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->toByteArray()[B

    move-result-object v0

    .line 1952
    .local v0, "ansb":[B
    const/4 v3, 0x3

    invoke-virtual {p0, v3, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1944
    return-void
.end method

.method public addParticipant(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Landroid/os/Message;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addParticipant address= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "clirMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1859
    const-string/jumbo v2, " callDetails= "

    .line 1858
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1860
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->processDial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Z)[B

    move-result-object v0

    .line 1862
    .local v0, "dialb":[B
    const/16 v1, 0x1c

    invoke-virtual {p0, v1, p4, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1857
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2125
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2124
    return-void
.end method

.method public deflectCall(ILjava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1887
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deflect call to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "connid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1888
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;-><init>()V

    .line 1889
    .local v0, "deflectCall":Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->setConnIndex(I)Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;

    .line 1890
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;

    .line 1891
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->toByteArray()[B

    move-result-object v1

    .line 1893
    .local v1, "deflectCallb":[B
    const/16 v2, 0x20

    invoke-virtual {p0, v2, p3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1886
    return-void
.end method

.method public dial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLandroid/os/Message;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p4, "isEncrypted"    # Z
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    .line 1868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dial address= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "clirMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1869
    const-string/jumbo v2, " callDetails= "

    .line 1868
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1869
    const-string/jumbo v2, " isEncrypted= "

    .line 1868
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1870
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsSenderRxr;->processDial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Z)[B

    move-result-object v0

    .line 1872
    .local v0, "dialb":[B
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p5, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1867
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1710
    const-string/jumbo v3, "IMS INTERFACE:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1711
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mSocket="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1712
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mSenderThread="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1713
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mSender="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1714
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mReceiverThread="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1715
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mReceiver="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mReceiver:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1716
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mWakeLock="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1717
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mWakeLockTimeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLockTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1718
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1719
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " mRequestMessagesPending="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1720
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " mRequestMessagesWaiting="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1721
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1722
    .local v0, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " mRequestList count="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1723
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1724
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/IFRequest;

    .line 1725
    .local v2, "rr":Lorg/codeaurora/ims/IFRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v5}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1723
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "rr":Lorg/codeaurora/ims/IFRequest;
    :cond_0
    monitor-exit v4

    .line 1728
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mLastNITZTimeInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mLastNITZTimeInfo:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1729
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mTestingEmergencyCall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1709
    return-void

    .line 1718
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public encodeMsg(ILandroid/os/Message;[B)V
    .locals 15
    .param p1, "id"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "msg"    # [B

    .prologue
    .line 1735
    const/4 v6, 0x0

    .line 1737
    .local v6, "msgLen":I
    const/4 v10, 0x0

    .line 1738
    .local v10, "totalPacketLen":I
    invoke-static/range {p1 .. p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v8

    .line 1741
    .local v8, "rr":Lorg/codeaurora/ims/IFRequest;
    new-instance v7, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    invoke-direct {v7}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;-><init>()V

    .line 1742
    .local v7, "msgtag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    iget v11, v8, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v7, v11}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->setToken(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    .line 1743
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->setType(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    .line 1744
    iget v11, v8, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-virtual {v7, v11}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->setId(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    .line 1745
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->setError(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    .line 1746
    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->toByteArray()[B

    move-result-object v9

    .line 1748
    .local v9, "tagb":[B
    if-eqz p3, :cond_0

    .line 1749
    move-object/from16 v0, p3

    array-length v6, v0

    .line 1757
    :cond_0
    array-length v11, v9

    add-int/lit8 v11, v11, 0x4

    add-int/2addr v11, v6

    add-int/lit8 v10, v11, 0x1

    .line 1758
    new-array v11, v10, [B

    iput-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    .line 1761
    iget-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    .line 1736
    const/4 v12, 0x0

    .line 1761
    const/4 v4, 0x1

    .local v4, "index":I
    iget-object v13, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    const/4 v14, 0x0

    aput-byte v14, v13, v4

    const/4 v13, 0x0

    aput-byte v13, v11, v12

    .line 1762
    iget-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    add-int/lit8 v12, v10, -0x4

    shr-int/lit8 v12, v12, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v11, v5

    .line 1763
    iget-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    add-int/lit8 v12, v10, -0x4

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v11, v4

    .line 1765
    iget-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    array-length v12, v9

    int-to-byte v12, v12

    aput-byte v12, v11, v5

    .line 1768
    :try_start_0
    iget-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    array-length v12, v9

    const/4 v13, 0x0

    invoke-static {v9, v13, v11, v4, v12}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1777
    :goto_0
    if-lez v6, :cond_1

    .line 1779
    :try_start_1
    iget-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    array-length v12, v9

    add-int/lit8 v12, v12, 0x5

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v13, v11, v12, v6}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ArrayStoreException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1789
    :cond_1
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lorg/codeaurora/ims/IFRequest;->serialString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v12}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1790
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Message data: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    invoke-static {v12}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1792
    invoke-virtual {p0, v8}, Lorg/codeaurora/ims/ImsSenderRxr;->send(Lorg/codeaurora/ims/IFRequest;)V

    .line 1793
    return-void

    .line 1773
    :catch_0
    move-exception v3

    .line 1774
    .local v3, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v11, " NullPointerException while parsing msg tag"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1771
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1772
    .local v1, "ex":Ljava/lang/ArrayStoreException;
    const-string/jumbo v11, " ArrayStoreException while parsing msg tag"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1769
    .end local v1    # "ex":Ljava/lang/ArrayStoreException;
    :catch_2
    move-exception v2

    .line 1770
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v11, " IndexOutOfBoundsException while encoding msg tag"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1784
    .end local v2    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :catch_3
    move-exception v3

    .line 1785
    .restart local v3    # "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v11, " NullPointerException while parsing msg"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1782
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :catch_4
    move-exception v1

    .line 1783
    .restart local v1    # "ex":Ljava/lang/ArrayStoreException;
    const-string/jumbo v11, " ArrayStoreException while parsing msg"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1780
    .end local v1    # "ex":Ljava/lang/ArrayStoreException;
    :catch_5
    move-exception v2

    .line 1781
    .restart local v2    # "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v11, " IndexOutOfBoundsException while encoding msg"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3123
    const-string/jumbo v0, "exitEmergencyCallbackMode"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3124
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3122
    return-void
.end method

.method public explicitCallTransfer(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "srcCallId"    # I
    .param p2, "type"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "destCallId"    # I
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    .line 2134
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;-><init>()V

    .line 2135
    .local v0, "ectMsg":Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    .line 2136
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->setEctType(I)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    .line 2137
    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->setTargetAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    .line 2138
    :cond_0
    if-lez p4, :cond_1

    invoke-virtual {v0, p4}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->setTargetCallId(I)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    .line 2139
    :cond_1
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->toByteArray()[B

    move-result-object v1

    .line 2140
    .local v1, "ectb":[B
    const/16 v2, 0xc

    invoke-virtual {p0, v2, p5, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2133
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2129
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2128
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2989
    const-string/jumbo v0, "getCLIR"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2990
    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2988
    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 3194
    const-string/jumbo v0, "getCOLR"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3195
    const/16 v0, 0x21

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3193
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2036
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2035
    return-void
.end method

.method public getHandoverConfig(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3276
    const-string/jumbo v0, "ImsSenderRxr"

    const-string/jumbo v1, "getHandoverConfig"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3277
    const/16 v0, 0x34

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3275
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2041
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2040
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2010
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2009
    return-void
.end method

.method public getPacketCount(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3250
    const-string/jumbo v0, "getPacketCount"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3251
    const/16 v0, 0x28

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3249
    return-void
.end method

.method public getPacketErrorCount(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3255
    const-string/jumbo v0, "getPacketErrorCount"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3256
    const/16 v0, 0x29

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3254
    return-void
.end method

.method public getSuppSvc(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3141
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 3140
    return-void
.end method

.method public getWifiCallingPreference(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3260
    const-string/jumbo v0, "getWifiCallingPreference"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3261
    const/16 v0, 0x2a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3259
    return-void
.end method

.method protected handleGeolocation([B)Ljava/lang/Object;
    .locals 4
    .param p1, "geolocationRequest"    # [B

    .prologue
    .line 2431
    const/4 v1, 0x0

    .line 2432
    .local v1, "geoInfo":Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 2434
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2439
    .end local v1    # "geoInfo":Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    :cond_0
    :goto_0
    return-object v1

    .line 2435
    .restart local v1    # "geoInfo":Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    :catch_0
    move-exception v0

    .line 2436
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in handleGeolocation parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleMwi([B)Ljava/lang/Object;
    .locals 4
    .param p1, "mwiNotification"    # [B

    .prologue
    .line 2419
    const/4 v1, 0x0

    .line 2420
    .local v1, "notification":Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 2422
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2427
    .end local v1    # "notification":Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    :cond_0
    :goto_0
    return-object v1

    .line 2423
    .restart local v1    # "notification":Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    :catch_0
    move-exception v0

    .line 2424
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in handleMwi parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleParticipantStatusInfo([B)Ljava/lang/Object;
    .locals 4
    .param p1, "participantStatusInfo"    # [B

    .prologue
    .line 2496
    const/4 v1, 0x0

    .line 2497
    .local v1, "info":Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 2499
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2504
    .end local v1    # "info":Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    :cond_0
    :goto_0
    return-object v1

    .line 2500
    .restart local v1    # "info":Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    :catch_0
    move-exception v0

    .line 2501
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in responseHandover parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleRadioStateChange([B)Ljava/lang/Object;
    .locals 5
    .param p1, "radioStateChange"    # [B

    .prologue
    const/4 v4, 0x1

    .line 2389
    const/4 v1, 0x0

    .line 2390
    .local v1, "response":[I
    if-eqz p1, :cond_0

    array-length v3, p1

    if-lt v3, v4, :cond_0

    .line 2392
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;

    move-result-object v2

    .line 2394
    .local v2, "state":Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    const/4 v3, 0x1

    new-array v1, v3, [I

    .line 2395
    .local v1, "response":[I
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->getState()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    .line 2396
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->getState()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 2407
    const-string/jumbo v3, "Invalid state in Radio State Change"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2415
    .end local v1    # "response":[I
    .end local v2    # "state":Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    :cond_0
    :goto_0
    return-object v1

    .line 2398
    .restart local v1    # "response":[I
    .restart local v2    # "state":Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    :sswitch_0
    sget-object v3, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_OFF:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setRadioState(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2411
    .end local v1    # "response":[I
    .end local v2    # "state":Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    :catch_0
    move-exception v0

    .line 2412
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, "InvalidProtocolBufferException in handleRadioStateChange parsing"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2401
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .restart local v1    # "response":[I
    .restart local v2    # "state":Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    :sswitch_1
    :try_start_1
    sget-object v3, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setRadioState(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V

    goto :goto_0

    .line 2404
    :sswitch_2
    sget-object v3, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_ON:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setRadioState(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V
    :try_end_1
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2396
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method protected handleRefreshInfo([B)Ljava/lang/Object;
    .locals 4
    .param p1, "confInfo"    # [B

    .prologue
    .line 2457
    const/4 v1, 0x0

    .line 2458
    .local v1, "info":Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 2460
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2465
    .end local v1    # "info":Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    :cond_0
    :goto_0
    return-object v1

    .line 2461
    .restart local v1    # "info":Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    :catch_0
    move-exception v0

    .line 2462
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in responseHandover parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleRefreshViceInfo([B)Ljava/lang/Object;
    .locals 4
    .param p1, "viceInfo"    # [B

    .prologue
    .line 2469
    const/4 v1, 0x0

    .line 2470
    .local v1, "info":Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 2472
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2477
    .end local v1    # "info":Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;
    :cond_0
    :goto_0
    return-object v1

    .line 2473
    .restart local v1    # "info":Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;
    :catch_0
    move-exception v0

    .line 2474
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in responseHandover parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleSrvStatus([B)Ljava/lang/Object;
    .locals 11
    .param p1, "updateList"    # [B

    .prologue
    .line 2582
    const/4 v4, 0x0

    .line 2583
    .local v4, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    const/4 v3, 0x0

    .line 2585
    .local v3, "num":I
    if-eqz p1, :cond_2

    .line 2587
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v7

    .line 2588
    .local v7, "statusList":Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfoCount()I

    move-result v3

    .line 2589
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2592
    .end local v4    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    .local v5, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 2593
    :try_start_1
    invoke-virtual {v7, v1}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfo(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    move-result-object v2

    .line 2594
    .local v2, "info":Lorg/codeaurora/ims/ImsQmiIF$Info;
    new-instance v6, Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {v6}, Lorg/codeaurora/ims/ServiceStatus;-><init>()V

    .line 2595
    .local v6, "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getIsValid()Z

    move-result v8

    iput-boolean v8, v6, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    .line 2596
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getCallType()I

    move-result v8

    iput v8, v6, Lorg/codeaurora/ims/ServiceStatus;->type:I

    .line 2597
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getStatus()I

    move-result v8

    iput v8, v6, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 2598
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 2599
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v8

    new-array v8, v8, [B

    iput-object v8, v6, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 2600
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v8

    iget-object v9, v6, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/google/protobuf/micro/ByteStringMicro;->copyTo([BI)V

    .line 2602
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isValid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v6, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2603
    iget v9, v6, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 2602
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2603
    const-string/jumbo v9, " userdata = "

    .line 2602
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2603
    iget-object v9, v6, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 2602
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2605
    invoke-direct {p0, v2, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->unpackAccTechStatus(Lorg/codeaurora/ims/ImsQmiIF$Info;Lorg/codeaurora/ims/ServiceStatus;)V

    .line 2606
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2592
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .end local v2    # "info":Lorg/codeaurora/ims/ImsQmiIF$Info;
    .end local v6    # "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    :cond_1
    move-object v4, v5

    .line 2615
    .end local v1    # "i":I
    .end local v5    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    .end local v7    # "statusList":Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    :goto_1
    return-object v4

    .line 2608
    .restart local v4    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    :catch_0
    move-exception v0

    .line 2609
    .end local v4    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :goto_2
    const-string/jumbo v8, "InvalidProtocolBufferException in handleSrvStatus parsing"

    invoke-virtual {p0, v8}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2613
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .restart local v4    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .local v4, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    goto :goto_1

    .line 2608
    .end local v4    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    .restart local v1    # "i":I
    .restart local v5    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    .restart local v7    # "statusList":Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    :catch_1
    move-exception v0

    .restart local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    move-object v4, v5

    .end local v5    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    .restart local v4    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    goto :goto_2
.end method

.method protected handleTtyNotify([B)Ljava/lang/Object;
    .locals 5
    .param p1, "notification"    # [B

    .prologue
    .line 2619
    const/4 v1, 0x0

    .line 2620
    .local v1, "mode":[I
    if-eqz p1, :cond_0

    .line 2622
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;

    move-result-object v2

    .line 2623
    .local v2, "notify":Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;
    const/4 v3, 0x1

    new-array v1, v3, [I

    .line 2624
    .local v1, "mode":[I
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->getMode()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    .line 2625
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleTtyNotify mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2630
    .end local v1    # "mode":[I
    .end local v2    # "notify":Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;
    :cond_0
    :goto_0
    return-object v1

    .line 2626
    :catch_0
    move-exception v0

    .line 2627
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, "InvalidProtocolBufferException in Message Tag parsing "

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleVoWiFiCallQuality([B)Ljava/lang/Object;
    .locals 5
    .param p1, "voWiFiCallQuality"    # [B

    .prologue
    .line 2481
    const/4 v2, 0x0

    .line 2482
    .local v2, "response":[I
    if-eqz p1, :cond_0

    .line 2484
    const/4 v0, 0x0

    .line 2485
    .local v0, "callQuality":Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;

    move-result-object v0

    .line 2486
    .local v0, "callQuality":Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;
    const/4 v3, 0x1

    new-array v2, v3, [I

    .line 2487
    .local v2, "response":[I
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->getQuality()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2492
    .end local v0    # "callQuality":Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;
    .end local v2    # "response":[I
    :cond_0
    :goto_0
    return-object v2

    .line 2488
    :catch_0
    move-exception v1

    .line 2489
    .local v1, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, "InvalidProtocolBufferException in handleVoWiFiCallQuality parsing"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1957
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hangupConnection index= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1958
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;-><init>()V

    .line 1959
    .local v0, "hangupIF":Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setConnIndex(I)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 1960
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setMultiParty(Z)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 1961
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->toByteArray()[B

    move-result-object v1

    .line 1962
    .local v1, "hangupb":[B
    const/4 v2, 0x4

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1956
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2117
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2116
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2121
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2120
    return-void
.end method

.method public hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "connectionId"    # I
    .param p2, "userUri"    # Ljava/lang/String;
    .param p3, "confUri"    # Ljava/lang/String;
    .param p4, "mpty"    # Z
    .param p5, "failCause"    # I
    .param p6, "errorInfo"    # Ljava/lang/String;
    .param p7, "result"    # Landroid/os/Message;

    .prologue
    .line 1968
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hangupWithReason connId= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " userUri= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " confUri= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1969
    const-string/jumbo v6, "mpty = "

    .line 1968
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1969
    const-string/jumbo v6, "failCause = "

    .line 1968
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1970
    new-instance v3, Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    invoke-direct {v3}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;-><init>()V

    .line 1975
    .local v3, "hangupIF":Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    const/4 v5, -0x1

    if-eq p1, v5, :cond_0

    .line 1976
    invoke-virtual {v3, p1}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setConnIndex(I)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 1978
    :cond_0
    invoke-virtual {v3, p4}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setMultiParty(Z)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 1979
    if-eqz p2, :cond_1

    .line 1980
    invoke-virtual {v3, p2}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setConnUri(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 1981
    :cond_1
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;-><init>()V

    .line 1982
    .local v1, "callfail":Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    if-eqz p6, :cond_2

    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1988
    :cond_2
    :goto_0
    invoke-direct {p0, p5}, Lorg/codeaurora/ims/ImsSenderRxr;->getCallFailCauseForImsReason(I)I

    move-result v0

    .line 1989
    .local v0, "callFailCause":I
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->setFailcause(I)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 1990
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hangupWithReason callFailCause="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1993
    const/16 v5, 0x3f5

    if-ne v0, v5, :cond_3

    .line 1994
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    .line 1996
    .local v2, "errorInfoStringMicro":Lcom/google/protobuf/micro/ByteStringMicro;
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->setErrorinfo(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 1997
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hangupWithReason MISC callFailCause, errorInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1999
    .end local v2    # "errorInfoStringMicro":Lcom/google/protobuf/micro/ByteStringMicro;
    :cond_3
    invoke-virtual {v3, v1}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setFailCauseResponse(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 2004
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->toByteArray()[B

    move-result-object v4

    .line 2005
    .local v4, "hangupb":[B
    const/4 v5, 0x4

    invoke-virtual {p0, v5, p7, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1967
    return-void

    .line 1983
    .end local v0    # "callFailCause":I
    .end local v4    # "hangupb":[B
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hangupWithReason errorInfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1984
    invoke-virtual {p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    .line 1985
    .restart local v2    # "errorInfoStringMicro":Lcom/google/protobuf/micro/ByteStringMicro;
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->setErrorinfo(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    goto :goto_0
.end method

.method public hold(Landroid/os/Message;I)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callId"    # I

    .prologue
    .line 2103
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Hold;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;-><init>()V

    .line 2104
    .local v0, "holdIF":Lorg/codeaurora/ims/ImsQmiIF$Hold;
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$Hold;

    .line 2105
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->toByteArray()[B

    move-result-object v1

    .line 2106
    .local v1, "holdb":[B
    const/16 v2, 0x25

    invoke-virtual {p0, v2, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2102
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1662
    return-void
.end method

.method public logUnimplemented()V
    .locals 2

    .prologue
    .line 1679
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 1680
    .local v0, "e":Ljava/lang/Exception;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1681
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 1682
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Unimplemented method. Stack trace: "

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1683
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1677
    return-void
.end method

.method public logv(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1668
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1666
    return-void
.end method

.method public modifyCallConfirm(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    .line 2081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "modifyCallConfirm callModify= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2082
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallModify(Lorg/codeaurora/ims/CallModify;)[B

    move-result-object v0

    .line 2083
    .local v0, "callModifyb":[B
    const/16 v1, 0x12

    invoke-virtual {p0, v1, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2080
    return-void
.end method

.method public modifyCallInitiate(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    .line 2075
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "modifyCallInitiate callModify= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2076
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallModify(Lorg/codeaurora/ims/CallModify;)[B

    move-result-object v0

    .line 2077
    .local v0, "callModifyb":[B
    const/16 v1, 0x11

    invoke-virtual {p0, v1, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2074
    return-void
.end method

.method public processResponse([BI)V
    .locals 12
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .prologue
    const/4 v11, 0x0

    .line 793
    const/4 v7, 0x0

    .line 794
    .local v7, "startIndex":I
    const/4 v0, 0x1

    .line 795
    .local v0, "endIndex":I
    const/4 v5, 0x0

    .line 797
    .local v5, "msg":[B
    const-string/jumbo v9, "processResponse"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 798
    if-lez p2, :cond_0

    .line 799
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Response data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1, v11, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 802
    :cond_0
    if-gt v0, p2, :cond_3

    .line 803
    aget-byte v6, p1, v7

    .line 806
    .local v6, "msglen":I
    const/4 v8, 0x0

    .line 807
    .local v8, "tag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    move v7, v0

    .line 808
    add-int/lit8 v0, v6, 0x1

    .line 810
    if-gt v0, p2, :cond_2

    if-lez v6, :cond_2

    .line 812
    new-array v5, v6, [B

    .line 815
    .local v5, "msg":[B
    const/4 v9, 0x0

    :try_start_0
    invoke-static {p1, v7, v5, v9, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 817
    invoke-static {v5}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 835
    .local v8, "tag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " Tag "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getToken()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 836
    invoke-virtual {v8}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getId()I

    move-result v10

    .line 835
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 836
    const-string/jumbo v10, " "

    .line 835
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 836
    invoke-virtual {v8}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getError()I

    move-result v10

    .line 835
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 839
    move v7, v0

    .line 840
    sub-int v6, p2, v0

    .line 841
    add-int/2addr v0, v6

    .line 843
    const/4 v5, 0x0

    .line 844
    .local v5, "msg":[B
    if-gt v0, p2, :cond_1

    if-lez v6, :cond_1

    .line 845
    new-array v5, v6, [B

    .line 847
    .local v5, "msg":[B
    const/4 v9, 0x0

    :try_start_1
    invoke-static {p1, v7, v5, v9, v6}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/ArrayStoreException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4

    .line 859
    .end local v5    # "msg":[B
    :cond_1
    :goto_0
    invoke-virtual {v8}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getType()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 867
    const-string/jumbo v9, " Unknown Message Type  "

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 877
    .end local v6    # "msglen":I
    .end local v8    # "tag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    :goto_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 789
    return-void

    .line 830
    .restart local v5    # "msg":[B
    .restart local v6    # "msglen":I
    .local v8, "tag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    :catch_0
    move-exception v1

    .line 831
    .local v1, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v9, "InvalidProtocolBufferException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 832
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 833
    return-void

    .line 826
    .end local v1    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :catch_1
    move-exception v4

    .line 827
    .local v4, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v9, " NullPointerException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 828
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 829
    return-void

    .line 822
    .end local v4    # "ex":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .line 823
    .local v2, "ex":Ljava/lang/ArrayStoreException;
    const-string/jumbo v9, " ArrayStoreException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 824
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 825
    return-void

    .line 818
    .end local v2    # "ex":Ljava/lang/ArrayStoreException;
    :catch_3
    move-exception v3

    .line 819
    .local v3, "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v9, " IndexOutOfBoundsException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 820
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 821
    return-void

    .line 852
    .end local v3    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .local v8, "tag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    :catch_4
    move-exception v4

    .line 853
    .restart local v4    # "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v9, " NullPointerException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 850
    .end local v4    # "ex":Ljava/lang/NullPointerException;
    :catch_5
    move-exception v2

    .line 851
    .restart local v2    # "ex":Ljava/lang/ArrayStoreException;
    const-string/jumbo v9, " ArrayStoreException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 848
    .end local v2    # "ex":Ljava/lang/ArrayStoreException;
    :catch_6
    move-exception v3

    .line 849
    .restart local v3    # "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v9, " IndexOutOfBoundsException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 861
    .end local v3    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .end local v5    # "msg":[B
    :pswitch_0
    invoke-virtual {p0, v8, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->processUnsolicited(Lorg/codeaurora/ims/ImsQmiIF$MsgTag;[B)V

    goto :goto_1

    .line 864
    :pswitch_1
    invoke-virtual {p0, v8, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->processSolicited(Lorg/codeaurora/ims/ImsQmiIF$MsgTag;[B)V

    goto :goto_1

    .line 872
    .local v5, "msg":[B
    .local v8, "tag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    :cond_2
    const-string/jumbo v9, "Error in parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 875
    .end local v6    # "msglen":I
    .end local v8    # "tag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    :cond_3
    const-string/jumbo v9, "Error in parsing msg tag length"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 859
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected processSolicited(Lorg/codeaurora/ims/ImsQmiIF$MsgTag;[B)V
    .locals 11
    .param p1, "tag"    # Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .param p2, "message"    # [B

    .prologue
    const/4 v10, 0x0

    .line 936
    const/4 v1, 0x0

    .line 938
    .local v1, "found":Z
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getToken()I

    move-result v5

    .line 939
    .local v5, "serial":I
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getError()I

    move-result v0

    .line 940
    .local v0, "error":I
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getId()I

    move-result v2

    .line 944
    .local v2, "id":I
    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->findAndRemoveRequestFromList(I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v4

    .line 946
    .local v4, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v4, :cond_0

    .line 947
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unexpected solicited response! sn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 948
    const-string/jumbo v8, " error: "

    .line 947
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 949
    return-void

    .line 952
    :cond_0
    const/4 v3, 0x0

    .line 954
    .local v3, "ret":Ljava/lang/Object;
    if-eqz v0, :cond_1

    if-eqz p2, :cond_3

    array-length v7, p2

    const/4 v8, 0x1

    if-lt v7, v8, :cond_3

    .line 957
    :cond_1
    packed-switch v2, :pswitch_data_0

    .line 1056
    :pswitch_0
    :try_start_0
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unrecognized solicited response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1057
    iget v9, v4, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    .line 1056
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1059
    :catch_0
    move-exception v6

    .line 1062
    .local v6, "tr":Ljava/lang/Throwable;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lorg/codeaurora/ims/IFRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1063
    iget v8, v4, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v8}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v8

    .line 1062
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1063
    const-string/jumbo v8, "[SUB"

    .line 1062
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1063
    iget-object v8, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    .line 1062
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1063
    const-string/jumbo v8, "]"

    .line 1062
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1064
    const-string/jumbo v8, " exception, possible invalid response"

    .line 1062
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1066
    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_2

    .line 1067
    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v10, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1068
    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1070
    :cond_2
    invoke-virtual {v4}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 1071
    return-void

    .line 959
    .end local v6    # "tr":Ljava/lang/Throwable;
    :pswitch_1
    :try_start_1
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseImsRegistration([B)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 1074
    .end local v3    # "ret":Ljava/lang/Object;
    :cond_3
    :goto_0
    :pswitch_2
    if-eqz v0, :cond_4

    .line 1075
    invoke-virtual {v4, v0, v3}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 1076
    invoke-virtual {v4}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 1077
    return-void

    .line 962
    .restart local v3    # "ret":Ljava/lang/Object;
    :pswitch_3
    :try_start_2
    iget-object v7, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 963
    iget-object v7, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v7, :cond_3

    .line 964
    const-string/jumbo v7, "testing emergency call, notify ECM Registrants"

    invoke-virtual {p0, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 965
    iget-object v7, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v7}, Landroid/os/Registrant;->notifyRegistrant()V

    goto :goto_0

    .line 971
    :pswitch_4
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseCallList([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 974
    :pswitch_5
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseCallFailCause([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 977
    :pswitch_6
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseGetClir([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 980
    :pswitch_7
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseQueryCallForward([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 983
    :pswitch_8
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseQueryCallWaiting([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 986
    :pswitch_9
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseQueryClip([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 989
    :pswitch_a
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleSrvStatus([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 995
    :pswitch_b
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseSuppSvcStatus([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 998
    :pswitch_c
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseGetRtpStatistics([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1001
    :pswitch_d
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseGetRtpErrorStatistics([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1004
    :pswitch_e
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseGetColr([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1007
    :pswitch_f
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseGetWifiCallingStatus([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1010
    :pswitch_10
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleVopsInfo([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1013
    :pswitch_11
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleSsacInfo([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1016
    :pswitch_12
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseGetVoltePref([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1019
    :pswitch_13
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseGetHanoverConfig([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1025
    :pswitch_14
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseSipErrorInfo([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1053
    :pswitch_15
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseConfig([B)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto :goto_0

    .line 1080
    .end local v3    # "ret":Ljava/lang/Object;
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lorg/codeaurora/ims/IFRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v8}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1081
    const-string/jumbo v8, " "

    .line 1080
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1081
    iget v8, v4, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-direct {p0, v8, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1080
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1083
    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_5

    .line 1084
    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v3, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1085
    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1088
    :cond_5
    invoke-virtual {v4}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 935
    return-void

    .line 957
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_14
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_9
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_b
        :pswitch_8
        :pswitch_b
        :pswitch_2
        :pswitch_2
        :pswitch_14
        :pswitch_a
        :pswitch_2
        :pswitch_b
        :pswitch_2
        :pswitch_e
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_14
        :pswitch_2
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_2
        :pswitch_15
        :pswitch_15
        :pswitch_2
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_2
        :pswitch_12
        :pswitch_13
        :pswitch_2
    .end packed-switch
.end method

.method protected processUnsolicited(Lorg/codeaurora/ims/ImsQmiIF$MsgTag;[B)V
    .locals 10
    .param p1, "tag"    # Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .param p2, "message"    # [B

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1158
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getId()I

    move-result v1

    .line 1159
    .local v1, "response":I
    const/4 v2, 0x0

    .line 1162
    .local v2, "ret":Ljava/lang/Object;
    packed-switch v1, :pswitch_data_0

    .line 1226
    :try_start_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unrecognized unsol response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1228
    .end local v2    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 1229
    .local v3, "tr":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception processing unsol response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1230
    const-string/jumbo v5, "Exception:"

    .line 1229
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1230
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1229
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1231
    return-void

    .line 1164
    .end local v3    # "tr":Ljava/lang/Throwable;
    .restart local v2    # "ret":Ljava/lang/Object;
    :pswitch_0
    if-eqz p2, :cond_0

    :try_start_1
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseCallRingBack([B)Ljava/lang/Object;

    move-result-object v2

    .line 1234
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 1157
    :cond_1
    :goto_1
    :pswitch_1
    return-void

    .line 1167
    .restart local v2    # "ret":Ljava/lang/Object;
    :pswitch_2
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseCallList([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1170
    :pswitch_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    .line 1171
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseCallList([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1174
    :pswitch_4
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseImsRegistration([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1178
    :pswitch_5
    const/4 v2, 0x0

    .line 1179
    goto :goto_0

    .line 1181
    :pswitch_6
    if-eqz p2, :cond_2

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseModifyCall([B)Ljava/lang/Object;

    move-result-object v2

    .line 1182
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1183
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    .line 1184
    new-instance v5, Landroid/os/AsyncResult;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v2, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1183
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1187
    .restart local v2    # "ret":Ljava/lang/Object;
    :pswitch_7
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseHandover([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1190
    :pswitch_8
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleRefreshInfo([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1193
    :pswitch_9
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleSrvStatus([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1196
    :pswitch_a
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleTtyNotify([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1199
    :pswitch_b
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseSuppServiceNotification([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1202
    :pswitch_c
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleRadioStateChange([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1205
    :pswitch_d
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleMwi([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1208
    :pswitch_e
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleGeolocation([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1211
    :pswitch_f
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleRefreshViceInfo([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1214
    :pswitch_10
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleVoWiFiCallQuality([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1217
    :pswitch_11
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleVopsInfo([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1220
    :pswitch_12
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleSsacInfo([B)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 1223
    :pswitch_13
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleParticipantStatusInfo([B)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto/16 :goto_0

    .line 1236
    .end local v2    # "ret":Ljava/lang/Object;
    :pswitch_14
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLog(I)V

    .line 1238
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 1239
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1238
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1242
    :pswitch_15
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1243
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCallStateRegistrants:Landroid/os/RegistrantList;

    .line 1244
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1243
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1247
    :pswitch_16
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1249
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_1

    .line 1250
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingRegistrant:Landroid/os/Registrant;

    .line 1251
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1250
    invoke-virtual {v4, v5}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1255
    :pswitch_17
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLog(I)V

    .line 1257
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_1

    .line 1258
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v4}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_1

    .line 1263
    :pswitch_18
    const/4 v0, 0x0

    .line 1264
    .local v0, "playtone":Z
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogvRet(ILjava/lang/Object;)V

    .line 1265
    if-eqz v2, :cond_3

    check-cast v2, [I

    const/4 v4, 0x0

    aget v4, v2, v4

    if-ne v4, v9, :cond_4

    const/4 v0, 0x1

    .line 1266
    :cond_3
    :goto_2
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_1

    .line 1267
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    .line 1268
    new-instance v5, Landroid/os/AsyncResult;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v5, v8, v6, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1267
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1265
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 1272
    .end local v0    # "playtone":Z
    :pswitch_19
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1274
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_1

    .line 1275
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    .line 1276
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v8, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1275
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1280
    :pswitch_1a
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1281
    if-eqz v2, :cond_1

    .line 1282
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    .line 1283
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1282
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1287
    :pswitch_1b
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1288
    if-eqz v2, :cond_1

    .line 1289
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Landroid/os/RegistrantList;

    .line 1290
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1289
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1294
    :pswitch_1c
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1295
    if-eqz v2, :cond_1

    .line 1296
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    .line 1297
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1296
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1301
    :pswitch_1d
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1302
    if-eqz v2, :cond_1

    .line 1303
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Landroid/os/RegistrantList;

    .line 1304
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1303
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1308
    :pswitch_1e
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1309
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_1

    .line 1310
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Landroid/os/Registrant;

    .line 1311
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1310
    invoke-virtual {v4, v5}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1315
    :pswitch_1f
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1316
    if-eqz v2, :cond_1

    .line 1317
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Landroid/os/RegistrantList;

    .line 1318
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1317
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1322
    :pswitch_20
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1323
    if-eqz v2, :cond_1

    .line 1324
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Landroid/os/RegistrantList;

    .line 1325
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1324
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1329
    :pswitch_21
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1330
    if-eqz v2, :cond_1

    .line 1331
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshViceInfoRegistrants:Landroid/os/RegistrantList;

    .line 1332
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1331
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1336
    :pswitch_22
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1337
    if-eqz v2, :cond_1

    .line 1338
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Landroid/os/RegistrantList;

    .line 1339
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1338
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1343
    :pswitch_23
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1344
    if-eqz v2, :cond_1

    .line 1345
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Landroid/os/RegistrantList;

    .line 1346
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1345
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1350
    :pswitch_24
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1351
    if-eqz v2, :cond_1

    .line 1352
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Landroid/os/RegistrantList;

    .line 1353
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1352
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1357
    :pswitch_25
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1358
    if-eqz v2, :cond_1

    .line 1359
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Landroid/os/RegistrantList;

    .line 1360
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1359
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1162
    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 1234
    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_15
        :pswitch_16
        :pswitch_18
        :pswitch_14
        :pswitch_17
        :pswitch_19
        :pswitch_1
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1e
        :pswitch_1d
        :pswitch_1
        :pswitch_1f
        :pswitch_21
        :pswitch_20
        :pswitch_22
        :pswitch_24
        :pswitch_23
        :pswitch_25
    .end packed-switch
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3108
    const-string/jumbo v0, "queryClip"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3109
    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3107
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 3090
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryCallForwardStatus cfReason= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3091
    const-string/jumbo v4, " serviceClass = "

    .line 3090
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3091
    const-string/jumbo v4, "number = "

    .line 3090
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3092
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;-><init>()V

    .line 3093
    .local v0, "callForwardIF":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    new-instance v2, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;-><init>()V

    .line 3094
    .local v2, "callInfo":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3095
    invoke-virtual {v2, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setReason(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3096
    invoke-virtual {v2, p2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3097
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3098
    if-eqz p3, :cond_0

    .line 3099
    invoke-virtual {v2, p3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3100
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setTimeSeconds(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3101
    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->addInfo(Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    .line 3102
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->toByteArray()[B

    move-result-object v1

    .line 3103
    .local v1, "callForwardQuery":[B
    const/16 v3, 0x16

    invoke-virtual {p0, v3, p4, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3089
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 4
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3003
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryCallWaiting serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3004
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;-><init>()V

    .line 3005
    .local v0, "callWaitingQuery":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    .line 3006
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->toByteArray()[B

    move-result-object v1

    .line 3007
    .local v1, "callWaitingQueryInfo":[B
    const/16 v2, 0x18

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3002
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 3130
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0, p4}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 3129
    return-void
.end method

.method public queryIncomingCallBarring(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 3027
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x3

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    .line 3026
    return-void
.end method

.method public queryServiceStatus(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2014
    const/16 v0, 0x1d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2013
    return-void
.end method

.method public querySsacStatus(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3310
    const-string/jumbo v0, "querySsacStatus"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3311
    const/16 v0, 0x31

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3309
    return-void
.end method

.method public queryVoltePref(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3322
    const-string/jumbo v0, "queryVoltePref"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3323
    const/16 v0, 0x33

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3321
    return-void
.end method

.method public queryVopsStatus(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3305
    const-string/jumbo v0, "queryVopsStatus"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3306
    const/16 v0, 0x30

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3304
    return-void
.end method

.method public registerForGeolocationRequest(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 347
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 348
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 346
    return-void
.end method

.method public registerForHandoverStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 311
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 312
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 310
    return-void
.end method

.method public registerForModifyCall(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1140
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1141
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1139
    return-void
.end method

.method public registerForMwi(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1149
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1150
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1148
    return-void
.end method

.method public registerForParticipantStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 365
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 366
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 364
    return-void
.end method

.method public registerForPhoneId(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 276
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForPhoneId: mInstanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " UNchanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    return-void

    .line 280
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    .line 281
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->disableSrvStatus()V

    .line 282
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_1

    .line 284
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->shutdownInput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :cond_1
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForPhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' socket closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public registerForRefreshConfInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 320
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 321
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 319
    return-void
.end method

.method public registerForSrvStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 329
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 330
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 328
    return-void
.end method

.method public registerForSsacStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 293
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 294
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 292
    return-void
.end method

.method public registerForTtyStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 338
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 339
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 337
    return-void
.end method

.method public registerForVoWiFiCallQualityUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 356
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 357
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 355
    return-void
.end method

.method public registerForVopsStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 302
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 303
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 301
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2144
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2143
    return-void
.end method

.method protected responseCallList([B)Ljava/lang/Object;
    .locals 15
    .param p1, "callListB"    # [B

    .prologue
    .line 2674
    const/4 v10, 0x0

    .line 2675
    .local v10, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    const/4 v9, 0x0

    .line 2677
    .local v9, "num":I
    if-eqz p1, :cond_8

    .line 2679
    :try_start_0
    invoke-static/range {p1 .. p1}, Lorg/codeaurora/ims/ImsQmiIF$CallList;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallList;

    move-result-object v1

    .line 2680
    .local v1, "callList":Lorg/codeaurora/ims/ImsQmiIF$CallList;
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallList;->getCallAttributesCount()I

    move-result v9

    .line 2685
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v9}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2687
    .end local v10    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .local v11, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v9, :cond_7

    .line 2688
    :try_start_1
    invoke-virtual {v1, v5}, Lorg/codeaurora/ims/ImsQmiIF$CallList;->getCallAttributes(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    move-result-object v0

    .line 2689
    .local v0, "call":Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    new-instance v2, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v2}, Lorg/codeaurora/ims/DriverCallIms;-><init>()V

    .line 2691
    .local v2, "dc":Lorg/codeaurora/ims/DriverCallIms;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getState()I

    move-result v12

    invoke-static {v12}, Lorg/codeaurora/ims/DriverCallIms;->stateFromCall(I)Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v12

    iput-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 2692
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIndex()I

    move-result v12

    iput v12, v2, Lorg/codeaurora/ims/DriverCallIms;->index:I

    .line 2693
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getToa()I

    move-result v12

    iput v12, v2, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    .line 2694
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsMpty()Z

    move-result v12

    iput-boolean v12, v2, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    .line 2695
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsMT()Z

    move-result v12

    iput-boolean v12, v2, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    .line 2696
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getAls()I

    move-result v12

    iput v12, v2, Lorg/codeaurora/ims/DriverCallIms;->als:I

    .line 2697
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsVoice()Z

    move-result v12

    iput-boolean v12, v2, Lorg/codeaurora/ims/DriverCallIms;->isVoice:Z

    .line 2698
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsVoicePrivacy()Z

    move-result v12

    iput-boolean v12, v2, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    .line 2699
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNumber()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 2700
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNumberPresentation()I

    move-result v8

    .line 2701
    .local v8, "np":I
    invoke-static {v8}, Lorg/codeaurora/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v12

    iput v12, v2, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    .line 2702
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    .line 2704
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNamePresentation()I

    move-result v12

    .line 2703
    invoke-static {v12}, Lorg/codeaurora/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v12

    iput v12, v2, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    .line 2705
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsEncrypted()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2706
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsEncrypted()Z

    move-result v12

    iput-boolean v12, v2, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    .line 2710
    :goto_1
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasHistoryInfo()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2711
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getHistoryInfo()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    .line 2714
    :cond_0
    new-instance v12, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v12}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    iput-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 2715
    iget-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v13

    invoke-virtual {v13}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallType()I

    move-result v13

    iput v13, v12, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 2716
    iget-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v13

    invoke-virtual {v13}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallDomain()I

    move-result v13

    iput v13, v12, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 2717
    iget-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 2718
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v13

    invoke-virtual {v13}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallSubstate()I

    move-result v13

    .line 2717
    invoke-static {v13}, Lorg/codeaurora/ims/ImsSenderRxr;->toCallSubstateConstants(I)I

    move-result v13

    iput v13, v12, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 2719
    iget-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v13

    invoke-virtual {v13}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getMediaId()I

    move-result v13

    iput v13, v12, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 2720
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v12

    invoke-virtual {v12}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getExtrasList()Ljava/util/List;

    move-result-object v4

    .line 2721
    .local v4, "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v13, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    invoke-interface {v4, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    iput-object v12, v13, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 2722
    iget-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v13, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v13, v13, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 2723
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v14

    invoke-virtual {v14}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getLocalAbility()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v14

    .line 2722
    invoke-direct {p0, v13, v14}, Lorg/codeaurora/ims/ImsSenderRxr;->copySrvStatusList([Lorg/codeaurora/ims/ServiceStatus;Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v13

    iput-object v13, v12, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 2724
    iget-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v13, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v13, v13, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 2725
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v14

    invoke-virtual {v14}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getPeerAbility()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v14

    .line 2724
    invoke-direct {p0, v13, v14}, Lorg/codeaurora/ims/ImsSenderRxr;->copySrvStatusList([Lorg/codeaurora/ims/ServiceStatus;Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v13

    iput-object v13, v12, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 2726
    iget-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v13

    invoke-virtual {v13}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCauseCode()I

    move-result v13

    iput v13, v12, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    .line 2727
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Call Details = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2731
    iget-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    iget v13, v2, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    invoke-static {v12, v13}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 2736
    new-instance v12, Lcom/android/ims/ImsReasonInfo;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 2735
    iput-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    .line 2738
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasFailCause()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2739
    const/4 v7, 0x0

    .line 2741
    .local v7, "networkError":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v12

    invoke-virtual {v12}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasErrorDetails()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2742
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v12

    invoke-virtual {v12}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v12

    invoke-virtual {v12}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->getSipErrorString()Ljava/lang/String;

    move-result-object v7

    .line 2748
    .local v7, "networkError":Ljava/lang/String;
    const-string/jumbo v12, "Forbidden. Not Authorized for Service"

    .line 2747
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2749
    const-string/jumbo v12, "Throwing ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION intent."

    invoke-virtual {p0, v12}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2750
    new-instance v6, Landroid/content/Intent;

    .line 2751
    const-string/jumbo v12, "android.intent.action.ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION"

    .line 2750
    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2752
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v12, 0x20000000

    invoke-virtual {v6, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2753
    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2757
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "networkError":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v12

    invoke-virtual {v12}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasFailcause()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 2758
    iget-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    .line 2759
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v13

    invoke-direct {p0, v13}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsReasonForCallFailCause(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)I

    move-result v13

    .line 2758
    iput v13, v12, Lcom/android/ims/ImsReasonInfo;->mCode:I

    .line 2760
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v12

    invoke-virtual {v12}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasErrorDetails()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2761
    iget-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    .line 2762
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v13

    invoke-virtual {v13}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v13

    invoke-virtual {v13}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->getSipErrorCode()I

    move-result v13

    .line 2761
    iput v13, v12, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    .line 2765
    :cond_2
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v12

    invoke-virtual {v12}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getFailcause()I

    move-result v12

    iput v12, v2, Lorg/codeaurora/ims/DriverCallIms;->mCallFailReason:I

    .line 2768
    if-eqz v7, :cond_3

    .line 2769
    iget-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    iput-object v7, v12, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 2776
    :cond_3
    :goto_2
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2778
    iget-boolean v12, v2, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    if-eqz v12, :cond_6

    .line 2779
    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v12}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2780
    const-string/jumbo v12, "InCall VoicePrivacy is enabled"

    invoke-virtual {p0, v12}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2687
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 2708
    .end local v4    # "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const/4 v12, 0x0

    iput-boolean v12, v2, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z
    :try_end_1
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 2788
    .end local v0    # "call":Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .end local v2    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    .end local v8    # "np":I
    :catch_0
    move-exception v3

    .local v3, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    move-object v10, v11

    .line 2789
    .end local v1    # "callList":Lorg/codeaurora/ims/ImsQmiIF$CallList;
    .end local v5    # "i":I
    .end local v11    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :goto_4
    const-string/jumbo v12, "InvalidProtocolBufferException in Message Tag parsing "

    invoke-virtual {p0, v12}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2795
    .end local v3    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :goto_5
    return-object v10

    .line 2772
    .restart local v0    # "call":Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .restart local v1    # "callList":Lorg/codeaurora/ims/ImsQmiIF$CallList;
    .restart local v2    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    .restart local v4    # "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "i":I
    .restart local v8    # "np":I
    .restart local v11    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :cond_5
    :try_start_2
    const-string/jumbo v12, "CallFailCauseResponse has no int error code!"

    invoke-virtual {p0, v12}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 2782
    :cond_6
    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v12}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2783
    const-string/jumbo v12, "InCall VoicePrivacy is disabled"

    invoke-virtual {p0, v12}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 2787
    .end local v0    # "call":Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .end local v2    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    .end local v4    # "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "np":I
    :cond_7
    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_2
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v10, v11

    .end local v11    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .local v10, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    goto :goto_5

    .line 2793
    .end local v1    # "callList":Lorg/codeaurora/ims/ImsQmiIF$CallList;
    .end local v5    # "i":I
    .local v10, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :cond_8
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    .local v10, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    goto :goto_5

    .line 2788
    .local v10, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :catch_1
    move-exception v3

    .restart local v3    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    goto :goto_4
.end method

.method protected responseGetClir([B)Ljava/lang/Object;
    .locals 5
    .param p1, "clirInfo"    # [B

    .prologue
    const/4 v3, 0x0

    .line 2321
    const/4 v2, 0x0

    .line 2323
    .local v2, "response":[I
    if-eqz p1, :cond_0

    .line 2325
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Clir;

    move-result-object v1

    .line 2327
    .local v1, "info":Lorg/codeaurora/ims/ImsQmiIF$Clir;
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 2329
    .local v2, "response":[I
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->getParamN()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 2330
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->getParamM()I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2339
    .end local v1    # "info":Lorg/codeaurora/ims/ImsQmiIF$Clir;
    .end local v2    # "response":[I
    :goto_0
    return-object v2

    .line 2331
    :catch_0
    move-exception v0

    .line 2332
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2337
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .local v2, "response":[I
    :cond_0
    new-array v2, v3, [I

    .local v2, "response":[I
    goto :goto_0
.end method

.method protected responseGetColr([B)Ljava/lang/Object;
    .locals 3
    .param p1, "colrInfo"    # [B

    .prologue
    .line 2343
    const/4 v1, 0x0

    .line 2345
    .local v1, "info":Lorg/codeaurora/ims/ImsQmiIF$Colr;
    if-eqz p1, :cond_0

    .line 2347
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Colr;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2352
    .end local v1    # "info":Lorg/codeaurora/ims/ImsQmiIF$Colr;
    :cond_0
    :goto_0
    return-object v1

    .line 2348
    .restart local v1    # "info":Lorg/codeaurora/ims/ImsQmiIF$Colr;
    :catch_0
    move-exception v0

    .line 2349
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected responseGetVoltePref([B)Ljava/lang/Object;
    .locals 5
    .param p1, "voltePref"    # [B

    .prologue
    const/4 v4, 0x1

    .line 2530
    const/4 v2, 0x0

    .line 2531
    .local v2, "response":[I
    if-eqz p1, :cond_0

    array-length v3, p1

    if-lt v3, v4, :cond_0

    .line 2533
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;

    move-result-object v1

    .line 2534
    .local v1, "pref":Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;
    const/4 v3, 0x1

    new-array v2, v3, [I

    .line 2535
    .local v2, "response":[I
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->getMode()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2540
    .end local v1    # "pref":Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;
    .end local v2    # "response":[I
    :cond_0
    :goto_0
    return-object v2

    .line 2536
    :catch_0
    move-exception v0

    .line 2537
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, "InvalidProtocolBufferException in handleVoWiFiCallQuality parsing"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected responseHandover([B)Ljava/lang/Object;
    .locals 4
    .param p1, "handoverB"    # [B

    .prologue
    .line 2356
    const/4 v1, 0x0

    .line 2357
    .local v1, "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 2359
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2364
    .end local v1    # "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    :cond_0
    :goto_0
    return-object v1

    .line 2360
    .restart local v1    # "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    :catch_0
    move-exception v0

    .line 2361
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in responseHandover parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected responseImsRegistration([B)Ljava/lang/Object;
    .locals 4
    .param p1, "imsRegB"    # [B

    .prologue
    .line 2216
    const-string/jumbo v2, " responseImsRegistration"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2217
    const/4 v1, 0x0

    .line 2218
    .local v1, "registration":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 2220
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    move-result-object v1

    .line 2221
    .local v1, "registration":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ims registration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2228
    .end local v1    # "registration":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    :goto_0
    return-object v1

    .line 2222
    :catch_0
    move-exception v0

    .line 2223
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2226
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .local v1, "registration":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    :cond_0
    const-string/jumbo v2, "responseImsRegistration error"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected responseQueryCallForward([B)Ljava/lang/Object;
    .locals 11
    .param p1, "callInfoList"    # [B

    .prologue
    .line 2233
    const/4 v5, 0x0

    .line 2234
    .local v5, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v8, 0x0

    .line 2235
    .local v8, "timerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    const/4 v6, 0x0

    .line 2237
    .local v6, "numInfos":I
    if-eqz p1, :cond_2

    .line 2239
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    move-result-object v4

    .line 2241
    .local v4, "infoList":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->getInfoCount()I

    move-result v6

    .line 2242
    new-array v5, v6, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 2243
    .local v5, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    new-array v8, v6, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 2244
    .local v8, "timerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 2245
    invoke-virtual {v4, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->getInfo(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    move-result-object v0

    .line 2248
    .local v0, "callInfo":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    new-instance v9, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v9}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v9, v5, v3

    .line 2249
    aget-object v9, v5, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getStatus()I

    move-result v10

    iput v10, v9, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 2250
    aget-object v9, v5, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getReason()I

    move-result v10

    iput v10, v9, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 2251
    aget-object v9, v5, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getServiceClass()I

    move-result v10

    iput v10, v9, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 2252
    aget-object v9, v5, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getToa()I

    move-result v10

    iput v10, v9, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 2253
    aget-object v9, v5, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getNumber()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 2254
    aget-object v9, v5, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getTimeSeconds()I

    move-result v10

    iput v10, v9, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 2255
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerStart()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerEnd()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2256
    const-string/jumbo v9, "responseQueryCallForward for Timer"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2258
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getCallFwdTimerStart()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    move-result-object v7

    .line 2259
    .local v7, "startCallTimerInfo":Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    new-instance v9, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    invoke-direct {v9}, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;-><init>()V

    aput-object v9, v8, v3

    .line 2260
    aget-object v9, v8, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getStatus()I

    move-result v10

    iput v10, v9, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    .line 2261
    aget-object v9, v8, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getReason()I

    move-result v10

    iput v10, v9, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    .line 2262
    aget-object v9, v8, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getServiceClass()I

    move-result v10

    iput v10, v9, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->serviceClass:I

    .line 2263
    aget-object v9, v8, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getNumber()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->number:Ljava/lang/String;

    .line 2264
    aget-object v9, v8, v3

    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getHour()I

    move-result v10

    iput v10, v9, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startHour:I

    .line 2265
    aget-object v9, v8, v3

    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getMinute()I

    move-result v10

    iput v10, v9, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startMinute:I

    .line 2267
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getCallFwdTimerEnd()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    move-result-object v1

    .line 2268
    .local v1, "endCallTimerInfo":Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    aget-object v9, v8, v3

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getHour()I

    move-result v10

    iput v10, v9, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endHour:I

    .line 2269
    aget-object v9, v8, v3

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getMinute()I

    move-result v10

    iput v10, v9, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endMinute:I
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2270
    return-object v8

    .line 2244
    .end local v1    # "endCallTimerInfo":Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .end local v7    # "startCallTimerInfo":Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 2274
    .end local v0    # "callInfo":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .end local v3    # "i":I
    .end local v4    # "infoList":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    .end local v5    # "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v8    # "timerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    :catch_0
    move-exception v2

    .line 2275
    .local v2, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v9, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2280
    .end local v2    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :cond_1
    :goto_1
    return-object v5

    .line 2278
    .local v5, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    .local v8, "timerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    :cond_2
    const/4 v9, 0x0

    new-array v5, v9, [Lcom/android/internal/telephony/CallForwardInfo;

    .local v5, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    goto :goto_1
.end method

.method protected responseQueryCallWaiting([B)Ljava/lang/Object;
    .locals 6
    .param p1, "callWaitingInfo"    # [B

    .prologue
    const/4 v4, 0x0

    .line 2284
    const/4 v1, 0x0

    .line 2286
    .local v1, "response":[I
    if-eqz p1, :cond_1

    .line 2288
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    move-result-object v3

    .line 2290
    .local v3, "waitingInfo":Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->getServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    move-result-object v2

    .line 2292
    .local v2, "srvClass":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->getServiceStatus()I

    move-result v4

    if-nez v4, :cond_0

    .line 2293
    const/4 v4, 0x1

    new-array v1, v4, [I

    .line 2294
    .local v1, "response":[I
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v1, v5

    .line 2306
    .end local v1    # "response":[I
    .end local v2    # "srvClass":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .end local v3    # "waitingInfo":Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    :goto_0
    return-object v1

    .line 2296
    .local v1, "response":[I
    .restart local v2    # "srvClass":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .restart local v3    # "waitingInfo":Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    :cond_0
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 2297
    .local v1, "response":[I
    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v4, v1, v5

    .line 2298
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->getServiceClass()I

    move-result v4

    const/4 v5, 0x1

    aput v4, v1, v5
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2300
    .end local v1    # "response":[I
    .end local v2    # "srvClass":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .end local v3    # "waitingInfo":Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    :catch_0
    move-exception v0

    .line 2301
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v4, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2304
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .local v1, "response":[I
    :cond_1
    new-array v1, v4, [I

    .local v1, "response":[I
    goto :goto_0
.end method

.method protected responseQueryClip([B)Ljava/lang/Object;
    .locals 3
    .param p1, "clipInfo"    # [B

    .prologue
    const/4 v2, 0x0

    .line 2310
    if-eqz p1, :cond_0

    .line 2312
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2313
    :catch_0
    move-exception v0

    .line 2314
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v1, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2317
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :cond_0
    return-object v2
.end method

.method protected responseSuppServiceNotification([B)Ljava/lang/Object;
    .locals 4
    .param p1, "suppSrvNotification"    # [B

    .prologue
    .line 2444
    const/4 v1, 0x0

    .line 2445
    .local v1, "notification":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 2448
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2453
    .end local v1    # "notification":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    :cond_0
    :goto_0
    return-object v1

    .line 2449
    .restart local v1    # "notification":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    :catch_0
    move-exception v0

    .line 2450
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in responseSuppServiceNotification parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected responseSuppSvcStatus([B)Ljava/lang/Object;
    .locals 3
    .param p1, "suppSvcStatusInfo"    # [B

    .prologue
    .line 2965
    const/4 v1, 0x0

    .line 2967
    .local v1, "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    if-eqz p1, :cond_0

    .line 2969
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2976
    .end local v1    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    :goto_0
    return-object v1

    .line 2970
    .restart local v1    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    :catch_0
    move-exception v0

    .line 2971
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2974
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :cond_0
    const-string/jumbo v2, "responseSuppSvcStatus suppSvcStatusInfo null"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resume(Landroid/os/Message;I)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callId"    # I

    .prologue
    .line 2110
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Resume;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Resume;-><init>()V

    .line 2111
    .local v0, "resumeIF":Lorg/codeaurora/ims/ImsQmiIF$Resume;
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$Resume;->setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$Resume;

    .line 2112
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Resume;->toByteArray()[B

    move-result-object v1

    .line 2113
    .local v1, "resumeb":[B
    const/16 v2, 0x26

    invoke-virtual {p0, v2, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2109
    return-void
.end method

.method public send(Lorg/codeaurora/ims/IFRequest;)V
    .locals 4
    .param p1, "rr"    # Lorg/codeaurora/ims/IFRequest;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 775
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    if-nez v1, :cond_0

    .line 776
    const-string/jumbo v1, "socket connection with ril is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 777
    invoke-virtual {p1, v2, v3}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 778
    invoke-virtual {p1}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 779
    return-void

    .line 782
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    invoke-virtual {v1, v2, p1}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 784
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->acquireWakeLock()V

    .line 786
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 772
    return-void
.end method

.method public sendConfigRequest(IIZILjava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .param p1, "requestType"    # I
    .param p2, "item"    # I
    .param p3, "boolValue"    # Z
    .param p4, "intValue"    # I
    .param p5, "strValue"    # Ljava/lang/String;
    .param p6, "errorCause"    # I
    .param p7, "result"    # Landroid/os/Message;

    .prologue
    .line 2149
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;-><init>()V

    .line 2150
    .local v0, "configMsg":Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setItem(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 2151
    invoke-virtual {v0, p3}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setBoolValue(Z)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 2152
    invoke-virtual {v0, p4}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setIntValue(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 2153
    if-eqz p5, :cond_0

    invoke-virtual {v0, p5}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setStringValue(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 2154
    :cond_0
    invoke-virtual {v0, p6}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setErrorCause(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 2155
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->toByteArray()[B

    move-result-object v1

    .line 2157
    .local v1, "configb":[B
    invoke-virtual {p0, p1, p7, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2148
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 3
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2161
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;-><init>()V

    .line 2162
    .local v0, "dtmfIF":Lorg/codeaurora/ims/ImsQmiIF$Dtmf;
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->setDtmf(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    .line 2163
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->toByteArray()[B

    move-result-object v1

    .line 2165
    .local v1, "dtmfb":[B
    const/16 v2, 0xd

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2160
    return-void
.end method

.method public declared-synchronized sendGeolocationInfo(DDLandroid/location/Address;Landroid/os/Message;)V
    .locals 7
    .param p1, "lat"    # D
    .param p3, "lon"    # D
    .param p5, "address"    # Landroid/location/Address;
    .param p6, "result"    # Landroid/os/Message;

    .prologue
    monitor-enter p0

    .line 1899
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendGeolocationInfo [Lat="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1900
    const-string/jumbo v6, " | Lon="

    .line 1899
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1900
    const-string/jumbo v6, "]"

    .line 1899
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1901
    .local v4, "sb":Ljava/lang/StringBuilder;
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;-><init>()V

    .line 1902
    .local v0, "addressInfo":Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    if-eqz p5, :cond_5

    .line 1903
    invoke-virtual {p5}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    .line 1904
    .local v3, "info":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1905
    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->setCity(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    .line 1906
    const-string/jumbo v5, " Address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1908
    :cond_0
    invoke-virtual {p5}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    .line 1909
    if-eqz v3, :cond_1

    .line 1910
    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->setState(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    .line 1911
    const-string/jumbo v5, " State="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1913
    :cond_1
    invoke-virtual {p5}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v3

    .line 1914
    if-eqz v3, :cond_2

    .line 1915
    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->setCountry(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    .line 1916
    const-string/jumbo v5, " Country="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1918
    :cond_2
    invoke-virtual {p5}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    .line 1919
    if-eqz v3, :cond_3

    .line 1920
    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->setPostalCode(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    .line 1921
    const-string/jumbo v5, " Postal Code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1923
    :cond_3
    invoke-virtual {p5}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    .line 1924
    if-eqz v3, :cond_4

    .line 1925
    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->setCountryCode(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    .line 1926
    const-string/jumbo v5, " Country Code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1932
    .end local v3    # "info":Ljava/lang/String;
    :cond_4
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1933
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;-><init>()V

    .line 1934
    .local v1, "geoInfo":Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    invoke-virtual {v1, p1, p2}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->setLat(D)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    .line 1935
    invoke-virtual {v1, p3, p4}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->setLon(D)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    .line 1936
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->setAddressInfo(Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    .line 1937
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->toByteArray()[B

    move-result-object v2

    .line 1939
    .local v2, "geoInfob":[B
    const/16 v5, 0x2e

    invoke-virtual {p0, v5, p6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1897
    return-void

    .line 1929
    .end local v1    # "geoInfo":Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    .end local v2    # "geoInfob":[B
    :cond_5
    :try_start_1
    const-string/jumbo v5, " Null Address!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "addressInfo":Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public sendImsRegistrationState(ILandroid/os/Message;)V
    .locals 4
    .param p1, "imsRegState"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2046
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendImsRegistration imsRegState= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2048
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Registration;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;-><init>()V

    .line 2049
    .local v0, "registerImsIF":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->setState(I)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 2051
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->toByteArray()[B

    move-result-object v1

    .line 2053
    .local v1, "registerImsb":[B
    const/16 v2, 0x1a

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2045
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 4
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2994
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCLIR clirmode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2995
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Clir;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;-><init>()V

    .line 2997
    .local v0, "clirValue":Lorg/codeaurora/ims/ImsQmiIF$Clir;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->setParamN(I)Lorg/codeaurora/ims/ImsQmiIF$Clir;

    .line 2998
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->toByteArray()[B

    move-result-object v1

    .line 2999
    .local v1, "setCLIRInfo":[B
    const/16 v2, 0x15

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2993
    return-void
.end method

.method public setCOLR(ILandroid/os/Message;)V
    .locals 4
    .param p1, "presentationValue"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 3199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCOLR presentationValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3200
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Colr;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;-><init>()V

    .line 3202
    .local v0, "colrValue":Lorg/codeaurora/ims/ImsQmiIF$Colr;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Colr;

    .line 3203
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->toByteArray()[B

    move-result-object v1

    .line 3204
    .local v1, "setCOLRInfo":[B
    const/16 v2, 0x22

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3198
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 5
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 3037
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCallForward cfReason= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " serviceClass = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3038
    const-string/jumbo v4, "number = "

    .line 3037
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3038
    const-string/jumbo v4, "timeSeconds = "

    .line 3037
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3040
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;-><init>()V

    .line 3041
    .local v0, "callForwardIF":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;-><init>()V

    .line 3042
    .local v1, "callInfo":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3043
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setReason(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3044
    invoke-virtual {v1, p3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3045
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3046
    if-eqz p4, :cond_0

    .line 3047
    invoke-virtual {v1, p4}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3048
    :cond_0
    invoke-virtual {v1, p5}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setTimeSeconds(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3049
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->addInfo(Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    .line 3050
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->toByteArray()[B

    move-result-object v2

    .line 3051
    .local v2, "setCallForwardInfo":[B
    const/16 v3, 0x17

    invoke-virtual {p0, v3, p6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3036
    return-void
.end method

.method public setCallForwardUncondTimer(IIIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "cfReason"    # I
    .param p7, "serviceClass"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "response"    # Landroid/os/Message;

    .prologue
    .line 3058
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setCallForwardUncondTimer cfReason= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " serviceClass = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3059
    const-string/jumbo v7, "number = "

    .line 3058
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3059
    const-string/jumbo v7, "startHour = "

    .line 3058
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3060
    const-string/jumbo v7, "startMinute = "

    .line 3058
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3060
    const-string/jumbo v7, "endHour = "

    .line 3058
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3060
    const-string/jumbo v7, "endMin = "

    .line 3058
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3061
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;-><init>()V

    .line 3063
    .local v1, "callForwardIF":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    new-instance v2, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;-><init>()V

    .line 3064
    .local v2, "callInfo":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    invoke-virtual {v2, p5}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3065
    invoke-virtual {v2, p6}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setReason(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3066
    invoke-virtual {v2, p7}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3067
    invoke-static/range {p8 .. p8}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3068
    if-eqz p8, :cond_0

    .line 3069
    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3070
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setTimeSeconds(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3072
    new-instance v5, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    invoke-direct {v5}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;-><init>()V

    .line 3073
    .local v5, "startCallTimerInfo":Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    invoke-virtual {v5, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setHour(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 3074
    invoke-virtual {v5, p2}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setMinute(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 3075
    invoke-virtual {v2, v5}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setCallFwdTimerStart(Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3077
    new-instance v3, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    invoke-direct {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;-><init>()V

    .line 3078
    .local v3, "endCallTimerInfo":Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    invoke-virtual {v3, p3}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setHour(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 3079
    invoke-virtual {v3, p4}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setMinute(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 3080
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setCallFwdTimerEnd(Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3082
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->addInfo(Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    .line 3083
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->toByteArray()[B

    move-result-object v4

    .line 3084
    .local v4, "setCallForwardInfo":[B
    const/16 v6, 0x17

    move-object/from16 v0, p9

    invoke-virtual {p0, v6, v0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3057
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 3013
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCallWaiting enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "serviceClass = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3015
    new-instance v2, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;-><init>()V

    .line 3016
    .local v2, "setCallWaiting":Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;-><init>()V

    .line 3017
    .local v1, "sc":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    .line 3018
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->setServiceStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    .line 3020
    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->setServiceClass(Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    .line 3021
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->toByteArray()[B

    move-result-object v0

    .line 3022
    .local v0, "callWaitingSetInfo":[B
    const/16 v3, 0x19

    invoke-virtual {p0, v3, p3, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3012
    return-void

    .line 3019
    .end local v0    # "callWaitingSetInfo":[B
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 3136
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 3137
    .local v0, "operation":I
    :goto_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1, p5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 3135
    return-void

    .line 3136
    .end local v0    # "operation":I
    :cond_0
    const/4 v0, 0x2

    .restart local v0    # "operation":I
    goto :goto_0
.end method

.method public setHandoverConfig(ILandroid/os/Message;)V
    .locals 4
    .param p1, "hoConfig"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3281
    const-string/jumbo v1, "ImsSenderRxr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHandoverConfig hoConfig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3282
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;-><init>()V

    .line 3283
    .local v0, "hoConfigMsg":Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->setHoConfig(I)Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;

    .line 3285
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->toByteArray()[B

    move-result-object v1

    .line 3284
    const/16 v2, 0x35

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3280
    return-void
.end method

.method public setIncomingCallBarring(ILjava/lang/String;[Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "operation"    # I
    .param p2, "facility"    # Ljava/lang/String;
    .param p3, "icbNum"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 3032
    invoke-static {p2}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v2

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    .line 3031
    return-void
.end method

.method public setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 374
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Landroid/os/Registrant;

    .line 373
    return-void
.end method

.method public setPhoneType(I)V
    .locals 2
    .param p1, "phoneType"    # I

    .prologue
    .line 1705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPhoneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " old value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1706
    iput p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneType:I

    .line 1704
    return-void
.end method

.method public setServiceStatus(Landroid/os/Message;IIII)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "srvType"    # I
    .param p3, "network"    # I
    .param p4, "enabled"    # I
    .param p5, "restrictCause"    # I

    .prologue
    .line 2019
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;-><init>()V

    .line 2020
    .local v1, "srvSetting":Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    invoke-virtual {v1, p3}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->setNetworkMode(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 2021
    invoke-virtual {v1, p4}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 2026
    invoke-virtual {v1, p5}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->setRestrictionCause(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 2027
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Info;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Info;-><init>()V

    .line 2028
    .local v0, "srvInfo":Lorg/codeaurora/ims/ImsQmiIF$Info;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setIsValid(Z)Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 2029
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 2030
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Info;->addAccTechStatus(Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;)Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 2031
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->toByteArray()[B

    move-result-object v2

    const/16 v3, 0x1e

    invoke-virtual {p0, v3, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2018
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2980
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSuppServiceNotifications enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2981
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;-><init>()V

    .line 2982
    .local v1, "svcStatus":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;

    .line 2984
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->toByteArray()[B

    move-result-object v0

    .line 2985
    .local v0, "suppServiceNotif":[B
    const/16 v2, 0x1b

    invoke-virtual {p0, v2, p2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2979
    return-void

    .line 2983
    .end local v0    # "suppServiceNotif":[B
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setSuppSvc(Ljava/lang/String;ZLandroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 3145
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 3146
    .local v0, "operation":I
    :goto_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 3144
    return-void

    .line 3145
    .end local v0    # "operation":I
    :cond_0
    const/4 v0, 0x2

    .restart local v0    # "operation":I
    goto :goto_0
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 4
    .param p1, "uiTtyMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUiTTYMode uittyMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3115
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;-><init>()V

    .line 3116
    .local v0, "notify":Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->setMode(I)Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;

    .line 3117
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->toByteArray()[B

    move-result-object v1

    .line 3118
    .local v1, "setTtyInfo":[B
    const/16 v2, 0x27

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3112
    return-void
.end method

.method public setWifiCallingPreference(IILandroid/os/Message;)V
    .locals 3
    .param p1, "wifiCallingStatus"    # I
    .param p2, "wifiCallingPreference"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 3266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWifiCallingPreference wifiCallingStauts : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3267
    const-string/jumbo v2, " wifiCallingPreference : "

    .line 3266
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3268
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;-><init>()V

    .line 3269
    .local v0, "wifiCallingInfo":Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;

    .line 3270
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->setPreference(I)Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;

    .line 3272
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->toByteArray()[B

    move-result-object v1

    .line 3271
    const/16 v2, 0x2b

    invoke-virtual {p0, v2, p3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3265
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 3
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2169
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;-><init>()V

    .line 2170
    .local v0, "dtmfIF":Lorg/codeaurora/ims/ImsQmiIF$Dtmf;
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->setDtmf(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    .line 2172
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->toByteArray()[B

    move-result-object v1

    .line 2174
    .local v1, "dtmfb":[B
    const/16 v2, 0xe

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2168
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2178
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2177
    return-void
.end method

.method public suppSvcStatus(IILandroid/os/Message;)V
    .locals 4
    .param p1, "operationType"    # I
    .param p2, "facility"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 3183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "suppSvcStatus operationType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " facility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3185
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;-><init>()V

    .line 3186
    .local v1, "supsServiceStatus":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setOperationType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    .line 3187
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setFacilityType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    .line 3188
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->toByteArray()[B

    move-result-object v0

    .line 3189
    .local v0, "supsService":[B
    const/16 v2, 0x1f

    invoke-virtual {p0, v2, p3, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3182
    return-void
.end method

.method public suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V
    .locals 8
    .param p1, "operationType"    # I
    .param p2, "facility"    # I
    .param p3, "icbNum"    # [Ljava/lang/String;
    .param p4, "serviceClassValue"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 3151
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "suppSvcStatus operationType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " facility = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3152
    const-string/jumbo v7, "serviceClassValue = "

    .line 3151
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3154
    new-instance v5, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    invoke-direct {v5}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;-><init>()V

    .line 3155
    .local v5, "supsServiceStatus":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
    invoke-virtual {v5, p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setOperationType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    .line 3156
    invoke-virtual {v5, p2}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setFacilityType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    .line 3158
    new-instance v3, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    invoke-direct {v3}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;-><init>()V

    .line 3159
    .local v3, "serviceClass":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    invoke-virtual {v3, p4}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    .line 3163
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;-><init>()V

    .line 3164
    .local v1, "cbNumListType":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->setServiceClass(Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .line 3166
    if-eqz p3, :cond_0

    .line 3167
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, p3

    if-ge v2, v6, :cond_0

    .line 3168
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "icbnum: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p3, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "at index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3169
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;-><init>()V

    .line 3170
    .local v0, "cbNumList":Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    aget-object v6, p3, v2

    invoke-virtual {v0, v6}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    .line 3171
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->addCbNumList(Lorg/codeaurora/ims/ImsQmiIF$CbNumList;)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .line 3167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3175
    .end local v0    # "cbNumList":Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v5, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setCbNumListType(Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    .line 3177
    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->toByteArray()[B

    move-result-object v4

    .line 3178
    .local v4, "supsService":[B
    const/16 v6, 0x1f

    invoke-virtual {p0, v6, p5, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3150
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2097
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;-><init>()V

    .line 2098
    .local v0, "switchIF":Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->toByteArray()[B

    move-result-object v1

    .line 2099
    .local v1, "switchb":[B
    const/16 v2, 0x9

    invoke-virtual {p0, v2, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2095
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;I)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callType"    # I

    .prologue
    .line 2087
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchWaitingOrHoldingAndActive callType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2089
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;-><init>()V

    .line 2090
    .local v0, "switchIF":Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    .line 2091
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->toByteArray()[B

    move-result-object v1

    .line 2092
    .local v1, "switchb":[B
    const/16 v2, 0x9

    invoke-virtual {p0, v2, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2086
    return-void
.end method

.method public unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 378
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 377
    return-void
.end method

.method public unregisterForGeolocationRequest(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 352
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 351
    return-void
.end method

.method public unregisterForHandoverStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 316
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 315
    return-void
.end method

.method public unregisterForModifyCall(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1145
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1144
    return-void
.end method

.method public unregisterForMwi(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1154
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1153
    return-void
.end method

.method public unregisterForParticipantStatusInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 370
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 369
    return-void
.end method

.method public unregisterForRefreshConfInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 325
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 324
    return-void
.end method

.method public unregisterForSrvStatusUpdate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 334
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 333
    return-void
.end method

.method public unregisterForSsacStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 298
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 297
    return-void
.end method

.method public unregisterForTtyStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 343
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 342
    return-void
.end method

.method public unregisterForVoWiFiCallQualityUpdate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 361
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 360
    return-void
.end method

.method public unregisterForVopsStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 307
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 306
    return-void
.end method

.method public unsljLog(I)V
    .locals 2
    .param p1, "response"    # I

    .prologue
    .line 1688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1687
    return-void
.end method

.method public unsljLogMore(ILjava/lang/String;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "more"    # Ljava/lang/String;

    .prologue
    .line 1692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1691
    return-void
.end method

.method public unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 1696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1695
    return-void
.end method

.method public unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 1700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1699
    return-void
.end method

.method public updateVoltePref(ILandroid/os/Message;)V
    .locals 3
    .param p1, "preference"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateVoltePref as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3316
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;-><init>()V

    .line 3317
    .local v0, "prefMsg":Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->setMode(I)Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;

    .line 3318
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->toByteArray()[B

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3314
    return-void
.end method
