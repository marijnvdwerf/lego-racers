from splat.segtypes.common.data import CommonSegData


class N64SegDtors(CommonSegData):
    def get_linker_section(self):
        return ".dtors"
