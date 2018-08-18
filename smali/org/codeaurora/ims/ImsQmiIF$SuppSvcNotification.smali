.class public final Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuppSvcNotification"
.end annotation


# static fields
.field public static final CODE_FIELD_NUMBER:I = 0x2

.field public static final CONNID_FIELD_NUMBER:I = 0x6

.field public static final HISTORY_INFO_FIELD_NUMBER:I = 0x7

.field public static final HOLD_TONE_FIELD_NUMBER:I = 0x8

.field public static final INDEX_FIELD_NUMBER:I = 0x3

.field public static final NOTIFICATIONTYPE_FIELD_NUMBER:I = 0x1

.field public static final NUMBER_FIELD_NUMBER:I = 0x5

.field public static final TYPE_FIELD_NUMBER:I = 0x4


# instance fields
.field private cachedSize:I

.field private code_:I

.field private connId_:I

.field private hasCode:Z

.field private hasConnId:Z

.field private hasHistoryInfo:Z

.field private hasHoldTone:Z

.field private hasIndex:Z

.field private hasNotificationType:Z

.field private hasNumber:Z

.field private hasType:Z

.field private historyInfo_:Ljava/lang/String;

.field private holdTone_:Z

.field private index_:I

.field private notificationType_:I

.field private number_:Ljava/lang/String;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6556
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6561
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->notificationType_:I

    .line 6578
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->code_:I

    .line 6595
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->index_:I

    .line 6612
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->type_:I

    .line 6629
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->number_:Ljava/lang/String;

    .line 6646
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->connId_:I

    .line 6663
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->historyInfo_:Ljava/lang/String;

    .line 6680
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->holdTone_:Z

    .line 6740
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->cachedSize:I

    .line 6556
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6848
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 6842
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .prologue
    .line 6695
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearNotificationType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6696
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearCode()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6697
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearIndex()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6698
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6699
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearNumber()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6700
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearConnId()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6701
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearHistoryInfo()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6702
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearHoldTone()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6703
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->cachedSize:I

    .line 6704
    return-object p0
.end method

.method public clearCode()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6587
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasCode:Z

    .line 6588
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->code_:I

    .line 6589
    return-object p0
.end method

.method public clearConnId()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6655
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasConnId:Z

    .line 6656
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->connId_:I

    .line 6657
    return-object p0
.end method

.method public clearHistoryInfo()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .prologue
    .line 6672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHistoryInfo:Z

    .line 6673
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->historyInfo_:Ljava/lang/String;

    .line 6674
    return-object p0
.end method

.method public clearHoldTone()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6689
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHoldTone:Z

    .line 6690
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->holdTone_:Z

    .line 6691
    return-object p0
.end method

.method public clearIndex()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6604
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasIndex:Z

    .line 6605
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->index_:I

    .line 6606
    return-object p0
.end method

.method public clearNotificationType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6570
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNotificationType:Z

    .line 6571
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->notificationType_:I

    .line 6572
    return-object p0
.end method

.method public clearNumber()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .prologue
    .line 6638
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNumber:Z

    .line 6639
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->number_:Ljava/lang/String;

    .line 6640
    return-object p0
.end method

.method public clearType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6621
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasType:Z

    .line 6622
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->type_:I

    .line 6623
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 6743
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->cachedSize:I

    if-gez v0, :cond_0

    .line 6745
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getSerializedSize()I

    .line 6747
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->cachedSize:I

    return v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 6579
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->code_:I

    return v0
.end method

.method public getConnId()I
    .locals 1

    .prologue
    .line 6647
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->connId_:I

    return v0
.end method

.method public getHistoryInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6664
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->historyInfo_:Ljava/lang/String;

    return-object v0
.end method

.method public getHoldTone()Z
    .locals 1

    .prologue
    .line 6681
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->holdTone_:Z

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 6596
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->index_:I

    return v0
.end method

.method public getNotificationType()I
    .locals 1

    .prologue
    .line 6563
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->notificationType_:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6630
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->number_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 6752
    const/4 v0, 0x0

    .line 6753
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNotificationType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6755
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getNotificationType()I

    move-result v1

    const/4 v2, 0x1

    .line 6754
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 6757
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasCode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6759
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getCode()I

    move-result v1

    const/4 v2, 0x2

    .line 6758
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6761
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasIndex()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6763
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getIndex()I

    move-result v1

    const/4 v2, 0x3

    .line 6762
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6765
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6767
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getType()I

    move-result v1

    const/4 v2, 0x4

    .line 6766
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6769
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6771
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getNumber()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    .line 6770
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6773
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasConnId()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6775
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getConnId()I

    move-result v1

    const/4 v2, 0x6

    .line 6774
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6777
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHistoryInfo()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6779
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getHistoryInfo()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    .line 6778
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6781
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHoldTone()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6783
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getHoldTone()Z

    move-result v1

    const/16 v2, 0x8

    .line 6782
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6785
    :cond_7
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->cachedSize:I

    .line 6786
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 6613
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->type_:I

    return v0
.end method

.method public hasCode()Z
    .locals 1

    .prologue
    .line 6580
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasCode:Z

    return v0
.end method

.method public hasConnId()Z
    .locals 1

    .prologue
    .line 6648
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasConnId:Z

    return v0
.end method

.method public hasHistoryInfo()Z
    .locals 1

    .prologue
    .line 6665
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHistoryInfo:Z

    return v0
.end method

.method public hasHoldTone()Z
    .locals 1

    .prologue
    .line 6682
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHoldTone:Z

    return v0
.end method

.method public hasIndex()Z
    .locals 1

    .prologue
    .line 6597
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasIndex:Z

    return v0
.end method

.method public hasNotificationType()Z
    .locals 1

    .prologue
    .line 6562
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNotificationType:Z

    return v0
.end method

.method public hasNumber()Z
    .locals 1

    .prologue
    .line 6631
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNumber:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 6614
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6708
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
    .line 6790
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6794
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6795
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6799
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6800
    return-object p0

    .line 6797
    :sswitch_0
    return-object p0

    .line 6805
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setNotificationType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    goto :goto_0

    .line 6809
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setCode(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    goto :goto_0

    .line 6813
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setIndex(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    goto :goto_0

    .line 6817
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    goto :goto_0

    .line 6821
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    goto :goto_0

    .line 6825
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setConnId(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    goto :goto_0

    .line 6829
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setHistoryInfo(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    goto :goto_0

    .line 6833
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setHoldTone(Z)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    goto :goto_0

    .line 6795
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2a -> :sswitch_5
        0x35 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method public setCode(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6582
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasCode:Z

    .line 6583
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->code_:I

    .line 6584
    return-object p0
.end method

.method public setConnId(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6650
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasConnId:Z

    .line 6651
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->connId_:I

    .line 6652
    return-object p0
.end method

.method public setHistoryInfo(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6667
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHistoryInfo:Z

    .line 6668
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->historyInfo_:Ljava/lang/String;

    .line 6669
    return-object p0
.end method

.method public setHoldTone(Z)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 6684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHoldTone:Z

    .line 6685
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->holdTone_:Z

    .line 6686
    return-object p0
.end method

.method public setIndex(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasIndex:Z

    .line 6600
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->index_:I

    .line 6601
    return-object p0
.end method

.method public setNotificationType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNotificationType:Z

    .line 6566
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->notificationType_:I

    .line 6567
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6633
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNumber:Z

    .line 6634
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->number_:Ljava/lang/String;

    .line 6635
    return-object p0
.end method

.method public setType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6616
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasType:Z

    .line 6617
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->type_:I

    .line 6618
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
    .line 6714
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNotificationType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6715
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getNotificationType()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 6717
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6718
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getCode()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6720
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasIndex()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6721
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getIndex()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6723
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6724
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getType()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6726
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6727
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6729
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasConnId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6730
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getConnId()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6732
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHistoryInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6733
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getHistoryInfo()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6735
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHoldTone()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6736
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getHoldTone()Z

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 6713
    :cond_7
    return-void
.end method
