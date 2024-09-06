from splat.segtypes.common.data import CommonSegData


class N64SegCtors(CommonSegData):
    def get_linker_section(self):
        return ".ctors"
