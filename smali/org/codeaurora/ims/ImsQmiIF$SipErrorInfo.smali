.class public final Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SipErrorInfo"
.end annotation


# static fields
.field public static final SIPERRORCODE_FIELD_NUMBER:I = 0x1

.field public static final SIPERRORSTRING_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasSipErrorCode:Z

.field private hasSipErrorString:Z

.field private sipErrorCode_:I

.field private sipErrorString_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10306
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 10311
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->sipErrorCode_:I

    .line 10328
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->sipErrorString_:Ljava/lang/String;

    .line 10364
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->cachedSize:I

    .line 10306
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10424
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 10418
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    .locals 1

    .prologue
    .line 10343
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->clearSipErrorCode()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 10344
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->clearSipErrorString()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 10345
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->cachedSize:I

    .line 10346
    return-object p0
.end method

.method public clearSipErrorCode()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10320
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->hasSipErrorCode:Z

    .line 10321
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->sipErrorCode_:I

    .line 10322
    return-object p0
.end method

.method public clearSipErrorString()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    .locals 1

    .prologue
    .line 10337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->hasSipErrorString:Z

    .line 10338
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->sipErrorString_:Ljava/lang/String;

    .line 10339
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 10367
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 10369
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->getSerializedSize()I

    .line 10371
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 10376
    const/4 v0, 0x0

    .line 10377
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->hasSipErrorCode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10379
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->getSipErrorCode()I

    move-result v1

    const/4 v2, 0x1

    .line 10378
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 10381
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->hasSipErrorString()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10383
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->getSipErrorString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 10382
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10385
    :cond_1
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->cachedSize:I

    .line 10386
    return v0
.end method

.method public getSipErrorCode()I
    .locals 1

    .prologue
    .line 10312
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->sipErrorCode_:I

    return v0
.end method

.method public getSipErrorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10329
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->sipErrorString_:Ljava/lang/String;

    return-object v0
.end method

.method public hasSipErrorCode()Z
    .locals 1

    .prologue
    .line 10313
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->hasSipErrorCode:Z

    return v0
.end method

.method public hasSipErrorString()Z
    .locals 1

    .prologue
    .line 10330
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->hasSipErrorString:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 10350
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
    .line 10390
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10394
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 10395
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 10399
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10400
    return-object p0

    .line 10397
    :sswitch_0
    return-object p0

    .line 10405
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->setSipErrorCode(I)Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    goto :goto_0

    .line 10409
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->setSipErrorString(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    goto :goto_0

    .line 10395
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setSipErrorCode(I)Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 10315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->hasSipErrorCode:Z

    .line 10316
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->sipErrorCode_:I

    .line 10317
    return-object p0
.end method

.method public setSipErrorString(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 10332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->hasSipErrorString:Z

    .line 10333
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->sipErrorString_:Ljava/lang/String;

    .line 10334
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
    .line 10356
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->hasSipErrorCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10357
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->getSipErrorCode()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 10359
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->hasSipErrorString()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10360
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->getSipErrorString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10355
    :cond_1
    return-void
.end method
