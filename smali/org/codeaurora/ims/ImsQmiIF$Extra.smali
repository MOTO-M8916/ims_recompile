.class public final Lorg/codeaurora/ims/ImsQmiIF$Extra;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Extra"
.end annotation


# static fields
.field public static final EXTRAINFO_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private extraInfo_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private hasExtraInfo:Z

.field private hasType:Z

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4436
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4441
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->type_:I

    .line 4458
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->extraInfo_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 4494
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->cachedSize:I

    .line 4436
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Extra;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4554
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Extra;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Extra;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Extra;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4548
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Extra;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Extra;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Extra;
    .locals 1

    .prologue
    .line 4473
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->clearType()Lorg/codeaurora/ims/ImsQmiIF$Extra;

    .line 4474
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->clearExtraInfo()Lorg/codeaurora/ims/ImsQmiIF$Extra;

    .line 4475
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->cachedSize:I

    .line 4476
    return-object p0
.end method

.method public clearExtraInfo()Lorg/codeaurora/ims/ImsQmiIF$Extra;
    .locals 1

    .prologue
    .line 4467
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasExtraInfo:Z

    .line 4468
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->extraInfo_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 4469
    return-object p0
.end method

.method public clearType()Lorg/codeaurora/ims/ImsQmiIF$Extra;
    .locals 1

    .prologue
    .line 4450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasType:Z

    .line 4451
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->type_:I

    .line 4452
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4497
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->cachedSize:I

    if-gez v0, :cond_0

    .line 4499
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->getSerializedSize()I

    .line 4501
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->cachedSize:I

    return v0
.end method

.method public getExtraInfo()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 4459
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->extraInfo_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4506
    const/4 v0, 0x0

    .line 4507
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4509
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->getType()I

    move-result v1

    const/4 v2, 0x1

    .line 4508
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 4511
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasExtraInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4513
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->getExtraInfo()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    const/4 v2, 0x2

    .line 4512
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4515
    :cond_1
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->cachedSize:I

    .line 4516
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 4443
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->type_:I

    return v0
.end method

.method public hasExtraInfo()Z
    .locals 1

    .prologue
    .line 4460
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasExtraInfo:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 4442
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4480
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
    .line 4520
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Extra;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Extra;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4524
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4525
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4529
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4530
    return-object p0

    .line 4527
    :sswitch_0
    return-object p0

    .line 4535
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->setType(I)Lorg/codeaurora/ims/ImsQmiIF$Extra;

    goto :goto_0

    .line 4539
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->setExtraInfo(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$Extra;

    goto :goto_0

    .line 4525
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setExtraInfo(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$Extra;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/micro/ByteStringMicro;

    .prologue
    .line 4462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasExtraInfo:Z

    .line 4463
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->extraInfo_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 4464
    return-object p0
.end method

.method public setType(I)Lorg/codeaurora/ims/ImsQmiIF$Extra;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasType:Z

    .line 4446
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->type_:I

    .line 4447
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
    .line 4486
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4487
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->getType()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4489
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasExtraInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4490
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->getExtraInfo()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 4485
    :cond_1
    return-void
.end method
