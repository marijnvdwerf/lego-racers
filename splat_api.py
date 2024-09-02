from typing import Dict, List, Union


class Segment:
    def __init__(self, name: str, type: str, start: int, **kwargs):
        self.name = name
        self.type = type
        self.start = start
        self.attributes = kwargs
        self.subsegments: List[List[Union[int, str]]] = []

    def add_segment(self, start: int, type: str, name: str = ""):
        self.subsegments.append([start, type, name])
        return self


class SplatConfig:
    def __init__(self, name: str, sha1: str):
        self.name = name
        self.sha1 = sha1
        self.options: Dict[str, Union[str, bool, int, List[str]]] = {}
        self.segments: List[Segment] = []

    def set_option(self, key: str, value: Union[str, bool, int, List[str]]):
        self.options[key] = value

    def add_segment(self, start: int, type: str, name: str, **kwargs) -> Segment:
        segment = Segment(name, type, start, **kwargs)
        self.segments.append(segment)
        return segment


def create_config(name: str, sha1: str) -> SplatConfig:
    return SplatConfig(name, sha1)


def generate_yaml(config: SplatConfig) -> None:
    # This function will generate YAML from the SplatConfig
    # Implement YAML generation logic here
    pass
