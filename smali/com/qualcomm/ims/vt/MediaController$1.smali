.class Lcom/qualcomm/ims/vt/MediaController$1;
.super Landroid/os/AsyncTask;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/ims/vt/MediaController;->setVideoImageAsync(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/ims/vt/MediaController;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qualcomm/ims/vt/MediaController;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/ims/vt/MediaController;
    .param p2, "val$uri"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/qualcomm/ims/vt/MediaController$1;->this$0:Lcom/qualcomm/ims/vt/MediaController;

    iput-object p2, p0, Lcom/qualcomm/ims/vt/MediaController$1;->val$uri:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 88
    iget-object v2, p0, Lcom/qualcomm/ims/vt/MediaController$1;->this$0:Lcom/qualcomm/ims/vt/MediaController;

    invoke-static {v2}, Lcom/qualcomm/ims/vt/MediaController;->-get1(Lcom/qualcomm/ims/vt/MediaController;)Lcom/qualcomm/ims/vt/ImsMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/ims/vt/ImsMedia;->getNegotiatedWidth()I

    move-result v1

    .line 89
    .local v1, "negotiatedWidth":I
    iget-object v2, p0, Lcom/qualcomm/ims/vt/MediaController$1;->this$0:Lcom/qualcomm/ims/vt/MediaController;

    invoke-static {v2}, Lcom/qualcomm/ims/vt/MediaController;->-get1(Lcom/qualcomm/ims/vt/MediaController;)Lcom/qualcomm/ims/vt/ImsMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/ims/vt/ImsMedia;->getNegotiatedHeight()I

    move-result v0

    .line 90
    .local v0, "negotiatedHeight":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVideoImageAsync: negotiatedWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 91
    const-string/jumbo v3, " negotiatedHeight = "

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 91
    const-string/jumbo v3, " uri = "

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 91
    iget-object v3, p0, Lcom/qualcomm/ims/vt/MediaController$1;->val$uri:Ljava/lang/String;

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/ims/vt/MediaController;->-wrap0(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/qualcomm/ims/vt/MediaController$1;->val$uri:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/qualcomm/ims/vt/MediaController$1;->this$0:Lcom/qualcomm/ims/vt/MediaController;

    invoke-static {v2}, Lcom/qualcomm/ims/vt/MediaController;->-get0(Lcom/qualcomm/ims/vt/MediaController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 96
    const v3, 0x7f020002

    .line 95
    invoke-static {v2, v3, v1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->decodeImage(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/ims/vt/MediaController$1;->val$uri:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->decodeImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 87
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/MediaController$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVideoImageAsync bitmap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->-wrap0(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController$1;->this$0:Lcom/qualcomm/ims/vt/MediaController;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->-get1(Lcom/qualcomm/ims/vt/MediaController;)Lcom/qualcomm/ims/vt/ImsMedia;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->setPreviewImage(Landroid/graphics/Bitmap;)V

    .line 102
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "bitmap"    # Ljava/lang/Object;

    .prologue
    .line 102
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "bitmap":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/MediaController$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
