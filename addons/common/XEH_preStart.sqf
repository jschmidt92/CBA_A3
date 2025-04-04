#include "script_component.hpp"

//See usage in XEH_preInit
private _cfgPatches = configFile >> "CfgPatches";
private _allComponents = "true" configClasses _cfgPatches apply {configName _x};
uiNamespace setVariable [QGVAR(addons), compileFinal str _allComponents];
//https://www.w3.org/TR/css-color-3/#svg-color
uiNamespace setVariable [QGVAR(cssColorNames), compileFinal createHashMapFromArray [
    ["aliceblue", [[0.941, 0.973, 1], "#F0F8FF", "#(rgb,8,8,3)color(0.941,0.973,1)"]],
    ["antiquewhite", [[0.98, 0.922, 0.843], "#FAEBD7", "#(rgb,8,8,3)color(0.98,0.922,0.843)"]],
    ["aqua", [[0, 1, 1], "#00FFFF", "#(rgb,8,8,3)color(0,1,1)"]],
    ["aquamarine", [[0.498, 1, 0.831], "#7FFFD4", "#(rgb,8,8,3)color(0.498,1,0.831)"]],
    ["azure", [[0.941, 1, 1], "#F0FFFF", "#(rgb,8,8,3)color(0.941,1,1)"]],
    ["beige", [[0.961, 0.961, 0.863], "#F5F5DC", "#(rgb,8,8,3)color(0.961,0.961,0.863)"]],
    ["bisque", [[1, 0.894, 0.769], "#FFE4C4", "#(rgb,8,8,3)color(1,0.894,0.769)"]],
    ["black", [[0, 0, 0], "#000000", "#(rgb,8,8,3)color(0,0,0)"]],
    ["blanchedalmond", [[1, 0.922, 0.804], "#FFEBCD", "#(rgb,8,8,3)color(1,0.922,0.804)"]],
    ["blue", [[0, 0, 1], "#0000FF", "#(rgb,8,8,3)color(0,0,1)"]],
    ["blueviolet", [[0.541, 0.169, 0.886], "#8A2BE2", "#(rgb,8,8,3)color(0.541,0.169,0.886)"]],
    ["brown", [[0.647, 0.165, 0.165], "#A52A2A", "#(rgb,8,8,3)color(0.647,0.165,0.165)"]],
    ["burlywood", [[0.871, 0.722, 0.529], "#DEB887", "#(rgb,8,8,3)color(0.871,0.722,0.529)"]],
    ["cadetblue", [[0.373, 0.62, 0.627], "#5F9EA0", "#(rgb,8,8,3)color(0.373,0.62,0.627)"]],
    ["chartreuse", [[0.498, 1, 0], "#7FFF00", "#(rgb,8,8,3)color(0.498,1,0)"]],
    ["chocolate", [[0.824, 0.412, 0.118], "#D2691E", "#(rgb,8,8,3)color(0.824,0.412,0.118)"]],
    ["coral", [[1, 0.498, 0.314], "#FF7F50", "#(rgb,8,8,3)color(1,0.498,0.314)"]],
    ["cornflowerblue", [[0.392, 0.584, 0.929], "#6495ED", "#(rgb,8,8,3)color(0.392,0.584,0.929)"]],
    ["cornsilk", [[1, 0.973, 0.863], "#FFF8DC", "#(rgb,8,8,3)color(1,0.973,0.863)"]],
    ["crimson", [[0.863, 0.0784, 0.235], "#DC143C", "#(rgb,8,8,3)color(0.863,0.0784,0.235)"]],
    ["cyan", [[0, 1, 1], "#00FFFF", "#(rgb,8,8,3)color(0,1,1)"]],
    ["darkblue", [[0, 0, 0.545], "#00008B", "#(rgb,8,8,3)color(0,0,0.545)"]],
    ["darkcyan", [[0, 0.545, 0.545], "#008B8B", "#(rgb,8,8,3)color(0,0.545,0.545)"]],
    ["darkgoldenrod", [[0.722, 0.525, 0.0431], "#B8860B", "#(rgb,8,8,3)color(0.722,0.525,0.0431)"]],
    ["darkgray", [[0.663, 0.663, 0.663], "#A9A9A9", "#(rgb,8,8,3)color(0.663,0.663,0.663)"]],
    ["darkgreen", [[0, 0.392, 0], "#006400", "#(rgb,8,8,3)color(0,0.392,0)"]],
    ["darkgrey", [[0.663, 0.663, 0.663], "#A9A9A9", "#(rgb,8,8,3)color(0.663,0.663,0.663)"]],
    ["darkkhaki", [[0.741, 0.718, 0.42], "#BDB76B", "#(rgb,8,8,3)color(0.741,0.718,0.42)"]],
    ["darkmagenta", [[0.545, 0, 0.545], "#8B008B", "#(rgb,8,8,3)color(0.545,0,0.545)"]],
    ["darkolivegreen", [[0.333, 0.42, 0.184], "#556B2F", "#(rgb,8,8,3)color(0.333,0.42,0.184)"]],
    ["darkorange", [[1, 0.549, 0], "#FF8C00", "#(rgb,8,8,3)color(1,0.549,0)"]],
    ["darkorchid", [[0.6, 0.196, 0.8], "#9932CC", "#(rgb,8,8,3)color(0.6,0.196,0.8)"]],
    ["darkred", [[0.545, 0, 0], "#8B0000", "#(rgb,8,8,3)color(0.545,0,0)"]],
    ["darksalmon", [[0.914, 0.588, 0.478], "#E9967A", "#(rgb,8,8,3)color(0.914,0.588,0.478)"]],
    ["darkseagreen", [[0.561, 0.737, 0.561], "#8FBC8F", "#(rgb,8,8,3)color(0.561,0.737,0.561)"]],
    ["darkslateblue", [[0.282, 0.239, 0.545], "#483D8B", "#(rgb,8,8,3)color(0.282,0.239,0.545)"]],
    ["darkslategray", [[0.184, 0.31, 0.31], "#2F4F4F", "#(rgb,8,8,3)color(0.184,0.31,0.31)"]],
    ["darkslategrey", [[0.184, 0.31, 0.31], "#2F4F4F", "#(rgb,8,8,3)color(0.184,0.31,0.31)"]],
    ["darkturquoise", [[0, 0.808, 0.82], "#00CED1", "#(rgb,8,8,3)color(0,0.808,0.82)"]],
    ["darkviolet", [[0.58, 0, 0.827], "#9400D3", "#(rgb,8,8,3)color(0.58,0,0.827)"]],
    ["deeppink", [[1, 0.0784, 0.576], "#FF1493", "#(rgb,8,8,3)color(1,0.0784,0.576)"]],
    ["deepskyblue", [[0, 0.749, 1], "#00BFFF", "#(rgb,8,8,3)color(0,0.749,1)"]],
    ["dimgray", [[0.412, 0.412, 0.412], "#696969", "#(rgb,8,8,3)color(0.412,0.412,0.412)"]],
    ["dimgrey", [[0.412, 0.412, 0.412], "#696969", "#(rgb,8,8,3)color(0.412,0.412,0.412)"]],
    ["dodgerblue", [[0.118, 0.565, 1], "#1E90FF", "#(rgb,8,8,3)color(0.118,0.565,1)"]],
    ["firebrick", [[0.698, 0.133, 0.133], "#B22222", "#(rgb,8,8,3)color(0.698,0.133,0.133)"]],
    ["floralwhite", [[1, 0.98, 0.941], "#FFFAF0", "#(rgb,8,8,3)color(1,0.98,0.941)"]],
    ["forestgreen", [[0.133, 0.545, 0.133], "#228B22", "#(rgb,8,8,3)color(0.133,0.545,0.133)"]],
    ["fuchsia", [[1, 0, 1], "#FF00FF", "#(rgb,8,8,3)color(1,0,1)"]],
    ["gainsboro", [[0.863, 0.863, 0.863], "#DCDCDC", "#(rgb,8,8,3)color(0.863,0.863,0.863)"]],
    ["ghostwhite", [[0.973, 0.973, 1], "#F8F8FF", "#(rgb,8,8,3)color(0.973,0.973,1)"]],
    ["gold", [[1, 0.843, 0], "#FFD700", "#(rgb,8,8,3)color(1,0.843,0)"]],
    ["goldenrod", [[0.855, 0.647, 0.125], "#DAA520", "#(rgb,8,8,3)color(0.855,0.647,0.125)"]],
    ["gray", [[0.502, 0.502, 0.502], "#808080", "#(rgb,8,8,3)color(0.502,0.502,0.502)"]],
    ["green", [[0, 0.502, 0], "#008000", "#(rgb,8,8,3)color(0,0.502,0)"]],
    ["greenyellow", [[0.678, 1, 0.184], "#ADFF2F", "#(rgb,8,8,3)color(0.678,1,0.184)"]],
    ["grey", [[0.502, 0.502, 0.502], "#808080", "#(rgb,8,8,3)color(0.502,0.502,0.502)"]],
    ["honeydew", [[0.941, 1, 0.941], "#F0FFF0", "#(rgb,8,8,3)color(0.941,1,0.941)"]],
    ["hotpink", [[1, 0.412, 0.706], "#FF69B4", "#(rgb,8,8,3)color(1,0.412,0.706)"]],
    ["indianred", [[0.804, 0.361, 0.361], "#CD5C5C", "#(rgb,8,8,3)color(0.804,0.361,0.361)"]],
    ["indigo", [[0.294, 0, 0.51], "#4B0082", "#(rgb,8,8,3)color(0.294,0,0.51)"]],
    ["ivory", [[1, 1, 0.941], "#FFFFF0", "#(rgb,8,8,3)color(1,1,0.941)"]],
    ["khaki", [[0.941, 0.902, 0.549], "#F0E68C", "#(rgb,8,8,3)color(0.941,0.902,0.549)"]],
    ["lavender", [[0.902, 0.902, 0.98], "#E6E6FA", "#(rgb,8,8,3)color(0.902,0.902,0.98)"]],
    ["lavenderblush", [[1, 0.941, 0.961], "#FFF0F5", "#(rgb,8,8,3)color(1,0.941,0.961)"]],
    ["lawngreen", [[0.486, 0.988, 0], "#7CFC00", "#(rgb,8,8,3)color(0.486,0.988,0)"]],
    ["lemonchiffon", [[1, 0.98, 0.804], "#FFFACD", "#(rgb,8,8,3)color(1,0.98,0.804)"]],
    ["lightblue", [[0.678, 0.847, 0.902], "#ADD8E6", "#(rgb,8,8,3)color(0.678,0.847,0.902)"]],
    ["lightcoral", [[0.941, 0.502, 0.502], "#F08080", "#(rgb,8,8,3)color(0.941,0.502,0.502)"]],
    ["lightcyan", [[0.878, 1, 1], "#E0FFFF", "#(rgb,8,8,3)color(0.878,1,1)"]],
    ["lightgoldenrodyellow", [[0.98, 0.98, 0.824], "#FAFAD2", "#(rgb,8,8,3)color(0.98,0.98,0.824)"]],
    ["lightgray", [[0.827, 0.827, 0.827], "#D3D3D3", "#(rgb,8,8,3)color(0.827,0.827,0.827)"]],
    ["lightgreen", [[0.565, 0.933, 0.565], "#90EE90", "#(rgb,8,8,3)color(0.565,0.933,0.565)"]],
    ["lightgrey", [[0.827, 0.827, 0.827], "#D3D3D3", "#(rgb,8,8,3)color(0.827,0.827,0.827)"]],
    ["lightpink", [[1, 0.714, 0.757], "#FFB6C1", "#(rgb,8,8,3)color(1,0.714,0.757)"]],
    ["lightsalmon", [[1, 0.627, 0.478], "#FFA07A", "#(rgb,8,8,3)color(1,0.627,0.478)"]],
    ["lightseagreen", [[0.125, 0.698, 0.667], "#20B2AA", "#(rgb,8,8,3)color(0.125,0.698,0.667)"]],
    ["lightskyblue", [[0.529, 0.808, 0.98], "#87CEFA", "#(rgb,8,8,3)color(0.529,0.808,0.98)"]],
    ["lightslategray", [[0.467, 0.533, 0.6], "#778899", "#(rgb,8,8,3)color(0.467,0.533,0.6)"]],
    ["lightslategrey", [[0.467, 0.533, 0.6], "#778899", "#(rgb,8,8,3)color(0.467,0.533,0.6)"]],
    ["lightsteelblue", [[0.69, 0.769, 0.871], "#B0C4DE", "#(rgb,8,8,3)color(0.69,0.769,0.871)"]],
    ["lightyellow", [[1, 1, 0.878], "#FFFFE0", "#(rgb,8,8,3)color(1,1,0.878)"]],
    ["lime", [[0, 1, 0], "#00FF00", "#(rgb,8,8,3)color(0,1,0)"]],
    ["limegreen", [[0.196, 0.804, 0.196], "#32CD32", "#(rgb,8,8,3)color(0.196,0.804,0.196)"]],
    ["linen", [[0.98, 0.941, 0.902], "#FAF0E6", "#(rgb,8,8,3)color(0.98,0.941,0.902)"]],
    ["magenta", [[1, 0, 1], "#FF00FF", "#(rgb,8,8,3)color(1,0,1)"]],
    ["maroon", [[0.502, 0, 0], "#800000", "#(rgb,8,8,3)color(0.502,0,0)"]],
    ["mediumaquamarine", [[0.4, 0.804, 0.667], "#66CDAA", "#(rgb,8,8,3)color(0.4,0.804,0.667)"]],
    ["mediumblue", [[0, 0, 0.804], "#0000CD", "#(rgb,8,8,3)color(0,0,0.804)"]],
    ["mediumorchid", [[0.729, 0.333, 0.827], "#BA55D3", "#(rgb,8,8,3)color(0.729,0.333,0.827)"]],
    ["mediumpurple", [[0.576, 0.439, 0.859], "#9370DB", "#(rgb,8,8,3)color(0.576,0.439,0.859)"]],
    ["mediumseagreen", [[0.235, 0.702, 0.443], "#3CB371", "#(rgb,8,8,3)color(0.235,0.702,0.443)"]],
    ["mediumslateblue", [[0.482, 0.408, 0.933], "#7B68EE", "#(rgb,8,8,3)color(0.482,0.408,0.933)"]],
    ["mediumspringgreen", [[0, 0.98, 0.604], "#00FA9A", "#(rgb,8,8,3)color(0,0.98,0.604)"]],
    ["mediumturquoise", [[0.282, 0.82, 0.8], "#48D1CC", "#(rgb,8,8,3)color(0.282,0.82,0.8)"]],
    ["mediumvioletred", [[0.78, 0.0824, 0.522], "#C71585", "#(rgb,8,8,3)color(0.78,0.0824,0.522)"]],
    ["midnightblue", [[0.098, 0.098, 0.439], "#191970", "#(rgb,8,8,3)color(0.098,0.098,0.439)"]],
    ["mintcream", [[0.961, 1, 0.98], "#F5FFFA", "#(rgb,8,8,3)color(0.961,1,0.98)"]],
    ["mistyrose", [[1, 0.894, 0.882], "#FFE4E1", "#(rgb,8,8,3)color(1,0.894,0.882)"]],
    ["moccasin", [[1, 0.894, 0.71], "#FFE4B5", "#(rgb,8,8,3)color(1,0.894,0.71)"]],
    ["navajowhite", [[1, 0.871, 0.678], "#FFDEAD", "#(rgb,8,8,3)color(1,0.871,0.678)"]],
    ["navy", [[0, 0, 0.502], "#000080", "#(rgb,8,8,3)color(0,0,0.502)"]],
    ["oldlace", [[0.992, 0.961, 0.902], "#FDF5E6", "#(rgb,8,8,3)color(0.992,0.961,0.902)"]],
    ["olive", [[0.502, 0.502, 0], "#808000", "#(rgb,8,8,3)color(0.502,0.502,0)"]],
    ["olivedrab", [[0.42, 0.557, 0.137], "#6B8E23", "#(rgb,8,8,3)color(0.42,0.557,0.137)"]],
    ["orange", [[1, 0.647, 0], "#FFA500", "#(rgb,8,8,3)color(1,0.647,0)"]],
    ["orangered", [[1, 0.271, 0], "#FF4500", "#(rgb,8,8,3)color(1,0.271,0)"]],
    ["orchid", [[0.855, 0.439, 0.839], "#DA70D6", "#(rgb,8,8,3)color(0.855,0.439,0.839)"]],
    ["palegoldenrod", [[0.933, 0.91, 0.667], "#EEE8AA", "#(rgb,8,8,3)color(0.933,0.91,0.667)"]],
    ["palegreen", [[0.596, 0.984, 0.596], "#98FB98", "#(rgb,8,8,3)color(0.596,0.984,0.596)"]],
    ["paleturquoise", [[0.686, 0.933, 0.933], "#AFEEEE", "#(rgb,8,8,3)color(0.686,0.933,0.933)"]],
    ["palevioletred", [[0.859, 0.439, 0.576], "#DB7093", "#(rgb,8,8,3)color(0.859,0.439,0.576)"]],
    ["papayawhip", [[1, 0.937, 0.835], "#FFEFD5", "#(rgb,8,8,3)color(1,0.937,0.835)"]],
    ["peachpuff", [[1, 0.855, 0.725], "#FFDAB9", "#(rgb,8,8,3)color(1,0.855,0.725)"]],
    ["peru", [[0.804, 0.522, 0.247], "#CD853F", "#(rgb,8,8,3)color(0.804,0.522,0.247)"]],
    ["pink", [[1, 0.753, 0.796], "#FFC0CB", "#(rgb,8,8,3)color(1,0.753,0.796)"]],
    ["plum", [[0.867, 0.627, 0.867], "#DDA0DD", "#(rgb,8,8,3)color(0.867,0.627,0.867)"]],
    ["powderblue", [[0.69, 0.878, 0.902], "#B0E0E6", "#(rgb,8,8,3)color(0.69,0.878,0.902)"]],
    ["purple", [[0.502, 0, 0.502], "#800080", "#(rgb,8,8,3)color(0.502,0,0.502)"]],
    ["red", [[1, 0, 0], "#FF0000", "#(rgb,8,8,3)color(1,0,0)"]],
    ["rosybrown", [[0.737, 0.561, 0.561], "#BC8F8F", "#(rgb,8,8,3)color(0.737,0.561,0.561)"]],
    ["royalblue", [[0.255, 0.412, 0.882], "#4169E1", "#(rgb,8,8,3)color(0.255,0.412,0.882)"]],
    ["saddlebrown", [[0.545, 0.271, 0.0745], "#8B4513", "#(rgb,8,8,3)color(0.545,0.271,0.0745)"]],
    ["salmon", [[0.98, 0.502, 0.447], "#FA8072", "#(rgb,8,8,3)color(0.98,0.502,0.447)"]],
    ["sandybrown", [[0.957, 0.643, 0.376], "#F4A460", "#(rgb,8,8,3)color(0.957,0.643,0.376)"]],
    ["seagreen", [[0.18, 0.545, 0.341], "#2E8B57", "#(rgb,8,8,3)color(0.18,0.545,0.341)"]],
    ["seashell", [[1, 0.961, 0.933], "#FFF5EE", "#(rgb,8,8,3)color(1,0.961,0.933)"]],
    ["sienna", [[0.627, 0.322, 0.176], "#A0522D", "#(rgb,8,8,3)color(0.627,0.322,0.176)"]],
    ["silver", [[0.753, 0.753, 0.753], "#C0C0C0", "#(rgb,8,8,3)color(0.753,0.753,0.753)"]],
    ["skyblue", [[0.529, 0.808, 0.922], "#87CEEB", "#(rgb,8,8,3)color(0.529,0.808,0.922)"]],
    ["slateblue", [[0.416, 0.353, 0.804], "#6A5ACD", "#(rgb,8,8,3)color(0.416,0.353,0.804)"]],
    ["slategray", [[0.439, 0.502, 0.565], "#708090", "#(rgb,8,8,3)color(0.439,0.502,0.565)"]],
    ["slategrey", [[0.439, 0.502, 0.565], "#708090", "#(rgb,8,8,3)color(0.439,0.502,0.565)"]],
    ["snow", [[1, 0.98, 0.98], "#FFFAFA", "#(rgb,8,8,3)color(1,0.98,0.98)"]],
    ["springgreen", [[0, 1, 0.498], "#00FF7F", "#(rgb,8,8,3)color(0,1,0.498)"]],
    ["steelblue", [[0.275, 0.51, 0.706], "#4682B4", "#(rgb,8,8,3)color(0.275,0.51,0.706)"]],
    ["tan", [[0.824, 0.706, 0.549], "#D2B48C", "#(rgb,8,8,3)color(0.824,0.706,0.549)"]],
    ["teal", [[0, 0.502, 0.502], "#008080", "#(rgb,8,8,3)color(0,0.502,0.502)"]],
    ["thistle", [[0.847, 0.749, 0.847], "#D8BFD8", "#(rgb,8,8,3)color(0.847,0.749,0.847)"]],
    ["tomato", [[1, 0.388, 0.278], "#FF6347", "#(rgb,8,8,3)color(1,0.388,0.278)"]],
    ["turquoise", [[0.251, 0.878, 0.816], "#40E0D0", "#(rgb,8,8,3)color(0.251,0.878,0.816)"]],
    ["violet", [[0.933, 0.51, 0.933], "#EE82EE", "#(rgb,8,8,3)color(0.933,0.51,0.933)"]],
    ["wheat", [[0.961, 0.871, 0.702], "#F5DEB3", "#(rgb,8,8,3)color(0.961,0.871,0.702)"]],
    ["white", [[1, 1, 1], "#FFFFFF", "#(rgb,8,8,3)color(1,1,1)"]],
    ["whitesmoke", [[0.961, 0.961, 0.961], "#F5F5F5", "#(rgb,8,8,3)color(0.961,0.961,0.961)"]],
    ["yellow", [[1, 1, 0], "#FFFF00", "#(rgb,8,8,3)color(1,1,0)"]],
    ["yellowgreen", [[0.604, 0.804, 0.196], "#9ACD32", "#(rgb,8,8,3)color(0.604,0.804,0.196)"]]
]];
