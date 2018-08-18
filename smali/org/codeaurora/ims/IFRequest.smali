.class Lorg/codeaurora/ims/IFRequest;
.super Ljava/lang/Object;
.source "ImsSenderRxr.java"


# static fields
.field private static final MAX_POOL_SIZE:I = 0x4

.field static sNextSerial:I

.field private static sPool:Lorg/codeaurora/ims/IFRequest;

.field private static sPoolSize:I

.field private static sPoolSync:Ljava/lang/Object;

.field static sSerialMonitor:Ljava/lang/Object;


# instance fields
.field mData:[B

.field mNext:Lorg/codeaurora/ims/IFRequest;

.field mRequest:I

.field mResult:Landroid/os/Message;

.field mSerial:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    sput v1, Lorg/codeaurora/ims/IFRequest;->sNextSerial:I

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/IFRequest;->sSerialMonitor:Ljava/lang/Object;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/IFRequest;->sPoolSync:Ljava/lang/Object;

    .line 84
    const/4 v0, 0x0

    sput-object v0, Lorg/codeaurora/ims/IFRequest;->sPool:Lorg/codeaurora/ims/IFRequest;

    .line 85
    sput v1, Lorg/codeaurora/ims/IFRequest;->sPoolSize:I

    .line 78
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;
    .locals 4
    .param p0, "request"    # I
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 107
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    sget-object v2, Lorg/codeaurora/ims/IFRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v2

    .line 108
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/IFRequest;->sPool:Lorg/codeaurora/ims/IFRequest;

    if-eqz v1, :cond_0

    .line 109
    sget-object v0, Lorg/codeaurora/ims/IFRequest;->sPool:Lorg/codeaurora/ims/IFRequest;

    .line 110
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    iget-object v1, v0, Lorg/codeaurora/ims/IFRequest;->mNext:Lorg/codeaurora/ims/IFRequest;

    sput-object v1, Lorg/codeaurora/ims/IFRequest;->sPool:Lorg/codeaurora/ims/IFRequest;

    .line 111
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/codeaurora/ims/IFRequest;->mNext:Lorg/codeaurora/ims/IFRequest;

    .line 112
    sget v1, Lorg/codeaurora/ims/IFRequest;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lorg/codeaurora/ims/IFRequest;->sPoolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "rr":Lorg/codeaurora/ims/IFRequest;
    :cond_0
    monitor-exit v2

    .line 116
    if-nez v0, :cond_1

    .line 117
    new-instance v0, Lorg/codeaurora/ims/IFRequest;

    invoke-direct {v0}, Lorg/codeaurora/ims/IFRequest;-><init>()V

    .line 120
    :cond_1
    sget-object v2, Lorg/codeaurora/ims/IFRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 121
    :try_start_1
    sget v1, Lorg/codeaurora/ims/IFRequest;->sNextSerial:I

    add-int/lit8 v3, v1, 0x1

    sput v3, Lorg/codeaurora/ims/IFRequest;->sNextSerial:I

    iput v1, v0, Lorg/codeaurora/ims/IFRequest;->mSerial:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    .line 123
    iput p0, v0, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    .line 124
    iput-object p1, v0, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    .line 126
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_2

    .line 127
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Message target must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 120
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    .line 130
    :cond_2
    return-object v0
.end method

.method static resetSerial()V
    .locals 2

    .prologue
    .line 152
    sget-object v0, Lorg/codeaurora/ims/IFRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    const/4 v1, 0x0

    :try_start_0
    sput v1, Lorg/codeaurora/ims/IFRequest;->sNextSerial:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 151
    return-void

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method onError(ILjava/lang/Object;)V
    .locals 4
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 179
    if-nez p1, :cond_1

    .line 180
    const/4 v1, 0x0

    .line 186
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/codeaurora/ims/IFRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "< "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 187
    iget v3, p0, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v3}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v3

    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 188
    const-string/jumbo v3, " error: "

    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 191
    iget-object v2, p0, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, p2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 192
    iget-object v2, p0, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 175
    :cond_0
    return-void

    .line 182
    :cond_1
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->errorIdToString(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "errorMsg":Ljava/lang/String;
    new-instance v1, Lorg/codeaurora/ims/ImsRilException;

    invoke-direct {v1, p1, v0}, Lorg/codeaurora/ims/ImsRilException;-><init>(ILjava/lang/String;)V

    .local v1, "ex":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method release()V
    .locals 3

    .prologue
    .line 138
    sget-object v1, Lorg/codeaurora/ims/IFRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_0
    sget v0, Lorg/codeaurora/ims/IFRequest;->sPoolSize:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 140
    sget-object v0, Lorg/codeaurora/ims/IFRequest;->sPool:Lorg/codeaurora/ims/IFRequest;

    iput-object v0, p0, Lorg/codeaurora/ims/IFRequest;->mNext:Lorg/codeaurora/ims/IFRequest;

    .line 141
    sput-object p0, Lorg/codeaurora/ims/IFRequest;->sPool:Lorg/codeaurora/ims/IFRequest;

    .line 142
    sget v0, Lorg/codeaurora/ims/IFRequest;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/codeaurora/ims/IFRequest;->sPoolSize:I

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 137
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method serialString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x8

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 162
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget v4, p0, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "sn":Ljava/lang/String;
    const/16 v4, 0x5b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "s":I
    :goto_0
    rsub-int/lit8 v4, v1, 0x4

    if-ge v0, v4, :cond_0

    .line 167
    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const/16 v4, 0x5d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
