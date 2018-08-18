.class public final Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallForwardInfo"
.end annotation


# static fields
.field public static final CALLFWDTIMEREND_FIELD_NUMBER:I = 0x8

.field public static final CALLFWDTIMERSTART_FIELD_NUMBER:I = 0x7

.field public static final NUMBER_FIELD_NUMBER:I = 0x5

.field public static final REASON_FIELD_NUMBER:I = 0x2

.field public static final SERVICE_CLASS_FIELD_NUMBER:I = 0x3

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field public static final TIME_SECONDS_FIELD_NUMBER:I = 0x6

.field public static final TOA_FIELD_NUMBER:I = 0x4


# instance fields
.field private cachedSize:I

.field private callFwdTimerEnd_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

.field private callFwdTimerStart_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

.field private hasCallFwdTimerEnd:Z

.field private hasCallFwdTimerStart:Z

.field private hasNumber:Z

.field private hasReason:Z

.field private hasServiceClass:Z

.field private hasStatus:Z

.field private hasTimeSeconds:Z

.field private hasToa:Z

.field private number_:Ljava/lang/String;

.field private reason_:I

.field private serviceClass_:I

.field private status_:I

.field private timeSeconds_:I

.field private toa_:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 5705
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5710
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->status_:I

    .line 5727
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->reason_:I

    .line 5744
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->serviceClass_:I

    .line 5761
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->toa_:I

    .line 5778
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->number_:Ljava/lang/String;

    .line 5795
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->timeSeconds_:I

    .line 5812
    iput-object v2, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->callFwdTimerStart_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 5832
    iput-object v2, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->callFwdTimerEnd_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 5895
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->cachedSize:I

    .line 5705
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6007
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 6001
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1

    .prologue
    .line 5850
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->clearStatus()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5851
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->clearReason()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5852
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->clearServiceClass()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5853
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->clearToa()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5854
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->clearNumber()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5855
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->clearTimeSeconds()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5856
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->clearCallFwdTimerStart()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5857
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->clearCallFwdTimerEnd()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5858
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->cachedSize:I

    .line 5859
    return-object p0
.end method

.method public clearCallFwdTimerEnd()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1

    .prologue
    .line 5844
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerEnd:Z

    .line 5845
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->callFwdTimerEnd_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 5846
    return-object p0
.end method

.method public clearCallFwdTimerStart()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1

    .prologue
    .line 5824
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerStart:Z

    .line 5825
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->callFwdTimerStart_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 5826
    return-object p0
.end method

.method public clearNumber()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1

    .prologue
    .line 5787
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasNumber:Z

    .line 5788
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->number_:Ljava/lang/String;

    .line 5789
    return-object p0
.end method

.method public clearReason()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5736
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasReason:Z

    .line 5737
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->reason_:I

    .line 5738
    return-object p0
.end method

.method public clearServiceClass()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5753
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasServiceClass:Z

    .line 5754
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->serviceClass_:I

    .line 5755
    return-object p0
.end method

.method public clearStatus()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5719
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasStatus:Z

    .line 5720
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->status_:I

    .line 5721
    return-object p0
.end method

.method public clearTimeSeconds()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5804
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasTimeSeconds:Z

    .line 5805
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->timeSeconds_:I

    .line 5806
    return-object p0
.end method

.method public clearToa()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5770
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasToa:Z

    .line 5771
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->toa_:I

    .line 5772
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5898
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 5900
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getSerializedSize()I

    .line 5902
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->cachedSize:I

    return v0
.end method

.method public getCallFwdTimerEnd()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1

    .prologue
    .line 5834
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->callFwdTimerEnd_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    return-object v0
.end method

.method public getCallFwdTimerStart()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1

    .prologue
    .line 5814
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->callFwdTimerStart_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5779
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->number_:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()I
    .locals 1

    .prologue
    .line 5728
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->reason_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5907
    const/4 v0, 0x0

    .line 5908
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5910
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    .line 5909
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 5912
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasReason()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5914
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getReason()I

    move-result v1

    const/4 v2, 0x2

    .line 5913
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5916
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasServiceClass()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5918
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getServiceClass()I

    move-result v1

    const/4 v2, 0x3

    .line 5917
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5920
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasToa()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5922
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getToa()I

    move-result v1

    const/4 v2, 0x4

    .line 5921
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5924
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5926
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getNumber()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    .line 5925
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5928
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasTimeSeconds()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5930
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getTimeSeconds()I

    move-result v1

    const/4 v2, 0x6

    .line 5929
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5932
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerStart()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5934
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getCallFwdTimerStart()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    move-result-object v1

    const/4 v2, 0x7

    .line 5933
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5936
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerEnd()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5938
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getCallFwdTimerEnd()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    move-result-object v1

    const/16 v2, 0x8

    .line 5937
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5940
    :cond_7
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->cachedSize:I

    .line 5941
    return v0
.end method

.method public getServiceClass()I
    .locals 1

    .prologue
    .line 5745
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->serviceClass_:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 5711
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->status_:I

    return v0
.end method

.method public getTimeSeconds()I
    .locals 1

    .prologue
    .line 5796
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->timeSeconds_:I

    return v0
.end method

.method public getToa()I
    .locals 1

    .prologue
    .line 5762
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->toa_:I

    return v0
.end method

.method public hasCallFwdTimerEnd()Z
    .locals 1

    .prologue
    .line 5833
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerEnd:Z

    return v0
.end method

.method public hasCallFwdTimerStart()Z
    .locals 1

    .prologue
    .line 5813
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerStart:Z

    return v0
.end method

.method public hasNumber()Z
    .locals 1

    .prologue
    .line 5780
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasNumber:Z

    return v0
.end method

.method public hasReason()Z
    .locals 1

    .prologue
    .line 5729
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasReason:Z

    return v0
.end method

.method public hasServiceClass()Z
    .locals 1

    .prologue
    .line 5746
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasServiceClass:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 5712
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasStatus:Z

    return v0
.end method

.method public hasTimeSeconds()Z
    .locals 1

    .prologue
    .line 5797
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasTimeSeconds:Z

    return v0
.end method

.method public hasToa()Z
    .locals 1

    .prologue
    .line 5763
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasToa:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5863
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5945
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5949
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5950
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5954
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5955
    return-object p0

    .line 5952
    :sswitch_0
    return-object p0

    .line 5960
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    goto :goto_0

    .line 5964
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setReason(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    goto :goto_0

    .line 5968
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    goto :goto_0

    .line 5972
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    goto :goto_0

    .line 5976
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    goto :goto_0

    .line 5980
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setTimeSeconds(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    goto :goto_0

    .line 5984
    :sswitch_7
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;-><init>()V

    .line 5985
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 5986
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setCallFwdTimerStart(Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    goto :goto_0

    .line 5990
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    :sswitch_8
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;-><init>()V

    .line 5991
    .restart local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 5992
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setCallFwdTimerEnd(Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    goto :goto_0

    .line 5950
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2a -> :sswitch_5
        0x35 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public setCallFwdTimerEnd(Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .prologue
    .line 5836
    if-nez p1, :cond_0

    .line 5837
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5839
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerEnd:Z

    .line 5840
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->callFwdTimerEnd_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 5841
    return-object p0
.end method

.method public setCallFwdTimerStart(Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .prologue
    .line 5816
    if-nez p1, :cond_0

    .line 5817
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5819
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerStart:Z

    .line 5820
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->callFwdTimerStart_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 5821
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasNumber:Z

    .line 5783
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->number_:Ljava/lang/String;

    .line 5784
    return-object p0
.end method

.method public setReason(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasReason:Z

    .line 5732
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->reason_:I

    .line 5733
    return-object p0
.end method

.method public setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5748
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasServiceClass:Z

    .line 5749
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->serviceClass_:I

    .line 5750
    return-object p0
.end method

.method public setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5714
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasStatus:Z

    .line 5715
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->status_:I

    .line 5716
    return-object p0
.end method

.method public setTimeSeconds(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5799
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasTimeSeconds:Z

    .line 5800
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->timeSeconds_:I

    .line 5801
    return-object p0
.end method

.method public setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5765
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasToa:Z

    .line 5766
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->toa_:I

    .line 5767
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5869
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5870
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 5872
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasReason()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5873
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getReason()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 5875
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasServiceClass()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5876
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getServiceClass()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 5878
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasToa()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5879
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getToa()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 5881
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5882
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5884
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasTimeSeconds()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5885
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getTimeSeconds()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 5887
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerStart()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5888
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getCallFwdTimerStart()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 5890
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerEnd()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5891
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getCallFwdTimerEnd()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 5868
    :cond_7
    return-void
.end method
