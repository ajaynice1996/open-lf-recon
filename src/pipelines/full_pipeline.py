class FullPipeline:
    def __init__(self, denoiser, domain_adapter, srr, artifact_model, segmenter):
        self.denoiser = denoiser
        self.domain_adapter = domain_adapter
        self.srr = srr
        self.artifact_model = artifact_model
        self.segmenter = segmenter

    def run(self, lf_image):
        x = self.denoiser(lf_image)
        x = self.domain_adapter(x)
        x = self.srr(x)
        x = self.artifact_model(x)
        seg = self.segmenter(x)
        return x, seg
