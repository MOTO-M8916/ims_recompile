.class public final Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuppSvcResponse"
.end annotation


# static fields
.field public static final CBNUMLISTTYPE_FIELD_NUMBER:I = 0x4

.field public static final ERRORDETAILS_FIELD_NUMBER:I = 0x5

.field public static final FACILITYTYPE_FIELD_NUMBER:I = 0x2

.field public static final FAILURECAUSE_FIELD_NUMBER:I = 0x3

.field public static final STATUS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private cbNumListType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;",
            ">;"
        }
    .end annotation
.end field

.field private errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

.field private facilityType_:I

.field private failureCause_:Ljava/lang/String;

.field private hasErrorDetails:Z

.field private hasFacilityType:Z

.field private hasFailureCause:Z

.field private hasStatus:Z

.field private status_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7113
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7118
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->status_:I

    .line 7135
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->facilityType_:I

    .line 7152
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->failureCause_:Ljava/lang/String;

    .line 7169
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 7168
    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    .line 7202
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 7253
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cachedSize:I

    .line 7113
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7341
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 7335
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    return-object v0
.end method


# virtual methods
.method public addCbNumListType(Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .prologue
    .line 7185
    if-nez p1, :cond_0

    .line 7186
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7188
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    .line 7191
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7192
    return-object p0
.end method

.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1

    .prologue
    .line 7220
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->clearStatus()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 7221
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->clearFacilityType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 7222
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->clearFailureCause()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 7223
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->clearCbNumListType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 7224
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->clearErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 7225
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cachedSize:I

    .line 7226
    return-object p0
.end method

.method public clearCbNumListType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1

    .prologue
    .line 7195
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    .line 7196
    return-object p0
.end method

.method public clearErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1

    .prologue
    .line 7214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails:Z

    .line 7215
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 7216
    return-object p0
.end method

.method public clearFacilityType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7144
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFacilityType:Z

    .line 7145
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->facilityType_:I

    .line 7146
    return-object p0
.end method

.method public clearFailureCause()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1

    .prologue
    .line 7161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause:Z

    .line 7162
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->failureCause_:Ljava/lang/String;

    .line 7163
    return-object p0
.end method

.method public clearStatus()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7127
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus:Z

    .line 7128
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->status_:I

    .line 7129
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 7256
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 7258
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getSerializedSize()I

    .line 7260
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cachedSize:I

    return v0
.end method

.method public getCbNumListType(I)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7175
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    return-object v0
.end method

.method public getCbNumListTypeCount()I
    .locals 1

    .prologue
    .line 7173
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCbNumListTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7171
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    return-object v0
.end method

.method public getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    .locals 1

    .prologue
    .line 7204
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    return-object v0
.end method

.method public getFacilityType()I
    .locals 1

    .prologue
    .line 7136
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->facilityType_:I

    return v0
.end method

.method public getFailureCause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7153
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->failureCause_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 7265
    const/4 v2, 0x0

    .line 7266
    .local v2, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7268
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v3

    const/4 v4, 0x1

    .line 7267
    invoke-static {v4, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/lit8 v2, v3, 0x0

    .line 7270
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFacilityType()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7272
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFacilityType()I

    move-result v3

    const/4 v4, 0x2

    .line 7271
    invoke-static {v4, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 7274
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7276
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 7275
    invoke-static {v4, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 7278
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getCbNumListTypeList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .line 7280
    .local v0, "element":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    const/4 v3, 0x4

    .line 7279
    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 7282
    .end local v0    # "element":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7284
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v3

    const/4 v4, 0x5

    .line 7283
    invoke-static {v4, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 7286
    :cond_4
    iput v2, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cachedSize:I

    .line 7287
    return v2
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 7120
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->status_:I

    return v0
.end method

.method public hasErrorDetails()Z
    .locals 1

    .prologue
    .line 7203
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails:Z

    return v0
.end method

.method public hasFacilityType()Z
    .locals 1

    .prologue
    .line 7137
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFacilityType:Z

    return v0
.end method

.method public hasFailureCause()Z
    .locals 1

    .prologue
    .line 7154
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 7119
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7230
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
    .line 7291
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7295
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7296
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7300
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7301
    return-object p0

    .line 7298
    :sswitch_0
    return-object p0

    .line 7306
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    goto :goto_0

    .line 7310
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->setFacilityType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    goto :goto_0

    .line 7314
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->setFailureCause(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    goto :goto_0

    .line 7318
    :sswitch_4
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;-><init>()V

    .line 7319
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 7320
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->addCbNumListType(Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    goto :goto_0

    .line 7324
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    :sswitch_5
    new-instance v2, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;-><init>()V

    .line 7325
    .local v2, "value":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    invoke-virtual {p1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 7326
    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->setErrorDetails(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    goto :goto_0

    .line 7296
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public setCbNumListType(ILorg/codeaurora/ims/ImsQmiIF$CbNumListType;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .prologue
    .line 7178
    if-nez p2, :cond_0

    .line 7179
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7181
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7182
    return-object p0
.end method

.method public setErrorDetails(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .prologue
    .line 7206
    if-nez p1, :cond_0

    .line 7207
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7209
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails:Z

    .line 7210
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 7211
    return-object p0
.end method

.method public setFacilityType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFacilityType:Z

    .line 7140
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->facilityType_:I

    .line 7141
    return-object p0
.end method

.method public setFailureCause(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause:Z

    .line 7157
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->failureCause_:Ljava/lang/String;

    .line 7158
    return-object p0
.end method

.method public setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus:Z

    .line 7123
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->status_:I

    .line 7124
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7236
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7237
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7239
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFacilityType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7240
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFacilityType()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 7242
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7243
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7245
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getCbNumListTypeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .line 7246
    .local v0, "element":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 7248
    .end local v0    # "element":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7249
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 7235
    :cond_4
    return-void
.end method
