.class public final Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MwiMessageSummary"
.end annotation


# static fields
.field public static final MESSAGETYPE_FIELD_NUMBER:I = 0x1

.field public static final NEWMESSAGE_FIELD_NUMBER:I = 0x2

.field public static final NEWURGENT_FIELD_NUMBER:I = 0x4

.field public static final OLDMESSAGE_FIELD_NUMBER:I = 0x3

.field public static final OLDURGENT_FIELD_NUMBER:I = 0x5


# instance fields
.field private cachedSize:I

.field private hasMessageType:Z

.field private hasNewMessage:Z

.field private hasNewUrgent:Z

.field private hasOldMessage:Z

.field private hasOldUrgent:Z

.field private messageType_:I

.field private newMessage_:I

.field private newUrgent_:I

.field private oldMessage_:I

.field private oldUrgent_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 7446
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7451
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->messageType_:I

    .line 7468
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->newMessage_:I

    .line 7485
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->oldMessage_:I

    .line 7502
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->newUrgent_:I

    .line 7519
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->oldUrgent_:I

    .line 7567
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->cachedSize:I

    .line 7446
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7651
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 7645
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1

    .prologue
    .line 7534
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->clearMessageType()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    .line 7535
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->clearNewMessage()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    .line 7536
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->clearOldMessage()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    .line 7537
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->clearNewUrgent()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    .line 7538
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->clearOldUrgent()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    .line 7539
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->cachedSize:I

    .line 7540
    return-object p0
.end method

.method public clearMessageType()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1

    .prologue
    .line 7460
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasMessageType:Z

    .line 7461
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->messageType_:I

    .line 7462
    return-object p0
.end method

.method public clearNewMessage()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7477
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewMessage:Z

    .line 7478
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->newMessage_:I

    .line 7479
    return-object p0
.end method

.method public clearNewUrgent()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7511
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewUrgent:Z

    .line 7512
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->newUrgent_:I

    .line 7513
    return-object p0
.end method

.method public clearOldMessage()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7494
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldMessage:Z

    .line 7495
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->oldMessage_:I

    .line 7496
    return-object p0
.end method

.method public clearOldUrgent()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7528
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldUrgent:Z

    .line 7529
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->oldUrgent_:I

    .line 7530
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 7570
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->cachedSize:I

    if-gez v0, :cond_0

    .line 7572
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getSerializedSize()I

    .line 7574
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->cachedSize:I

    return v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 7453
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->messageType_:I

    return v0
.end method

.method public getNewMessage()I
    .locals 1

    .prologue
    .line 7469
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->newMessage_:I

    return v0
.end method

.method public getNewUrgent()I
    .locals 1

    .prologue
    .line 7503
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->newUrgent_:I

    return v0
.end method

.method public getOldMessage()I
    .locals 1

    .prologue
    .line 7486
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->oldMessage_:I

    return v0
.end method

.method public getOldUrgent()I
    .locals 1

    .prologue
    .line 7520
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->oldUrgent_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7579
    const/4 v0, 0x0

    .line 7580
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasMessageType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7582
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getMessageType()I

    move-result v1

    const/4 v2, 0x1

    .line 7581
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 7584
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7586
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getNewMessage()I

    move-result v1

    const/4 v2, 0x2

    .line 7585
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7588
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7590
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getOldMessage()I

    move-result v1

    const/4 v2, 0x3

    .line 7589
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7592
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewUrgent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7594
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getNewUrgent()I

    move-result v1

    const/4 v2, 0x4

    .line 7593
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7596
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldUrgent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7598
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getOldUrgent()I

    move-result v1

    const/4 v2, 0x5

    .line 7597
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7600
    :cond_4
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->cachedSize:I

    .line 7601
    return v0
.end method

.method public hasMessageType()Z
    .locals 1

    .prologue
    .line 7452
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasMessageType:Z

    return v0
.end method

.method public hasNewMessage()Z
    .locals 1

    .prologue
    .line 7470
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewMessage:Z

    return v0
.end method

.method public hasNewUrgent()Z
    .locals 1

    .prologue
    .line 7504
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewUrgent:Z

    return v0
.end method

.method public hasOldMessage()Z
    .locals 1

    .prologue
    .line 7487
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldMessage:Z

    return v0
.end method

.method public hasOldUrgent()Z
    .locals 1

    .prologue
    .line 7521
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldUrgent:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7544
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
    .line 7605
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7609
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7610
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7614
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7615
    return-object p0

    .line 7612
    :sswitch_0
    return-object p0

    .line 7620
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->setMessageType(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    goto :goto_0

    .line 7624
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->setNewMessage(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    goto :goto_0

    .line 7628
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->setOldMessage(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    goto :goto_0

    .line 7632
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->setNewUrgent(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    goto :goto_0

    .line 7636
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->setOldUrgent(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    goto :goto_0

    .line 7610
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
    .end sparse-switch
.end method

.method public setMessageType(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7455
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasMessageType:Z

    .line 7456
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->messageType_:I

    .line 7457
    return-object p0
.end method

.method public setNewMessage(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewMessage:Z

    .line 7473
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->newMessage_:I

    .line 7474
    return-object p0
.end method

.method public setNewUrgent(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewUrgent:Z

    .line 7507
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->newUrgent_:I

    .line 7508
    return-object p0
.end method

.method public setOldMessage(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldMessage:Z

    .line 7490
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->oldMessage_:I

    .line 7491
    return-object p0
.end method

.method public setOldUrgent(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldUrgent:Z

    .line 7524
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->oldUrgent_:I

    .line 7525
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
    .line 7550
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasMessageType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7551
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getMessageType()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7553
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7554
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getNewMessage()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 7556
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7557
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getOldMessage()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 7559
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewUrgent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7560
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getNewUrgent()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 7562
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldUrgent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7563
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getOldUrgent()I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 7549
    :cond_4
    return-void
.end method
