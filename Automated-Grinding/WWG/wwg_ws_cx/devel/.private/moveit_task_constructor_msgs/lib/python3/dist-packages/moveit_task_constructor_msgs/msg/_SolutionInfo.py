# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from moveit_task_constructor_msgs/SolutionInfo.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy
import geometry_msgs.msg
import std_msgs.msg
import visualization_msgs.msg

class SolutionInfo(genpy.Message):
  _md5sum = "349cc436b667a16244a5d77757eec377"
  _type = "moveit_task_constructor_msgs/SolutionInfo"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# unique id within task
uint32 id

# associated cost
float32 cost

# associated comment, usually providing failure hint
string comment

# id of stage that created this trajectory
uint32 stage_id

# markers, e.g. providing additional hints or illustrating failure
visualization_msgs/Marker[] markers

================================================================================
MSG: visualization_msgs/Marker
# See http://www.ros.org/wiki/rviz/DisplayTypes/Marker and http://www.ros.org/wiki/rviz/Tutorials/Markers%3A%20Basic%20Shapes for more information on using this message with rviz

uint8 ARROW=0
uint8 CUBE=1
uint8 SPHERE=2
uint8 CYLINDER=3
uint8 LINE_STRIP=4
uint8 LINE_LIST=5
uint8 CUBE_LIST=6
uint8 SPHERE_LIST=7
uint8 POINTS=8
uint8 TEXT_VIEW_FACING=9
uint8 MESH_RESOURCE=10
uint8 TRIANGLE_LIST=11

uint8 ADD=0
uint8 MODIFY=0
uint8 DELETE=2
uint8 DELETEALL=3

Header header                        # header for time/frame information
string ns                            # Namespace to place this object in... used in conjunction with id to create a unique name for the object
int32 id 		                         # object ID useful in conjunction with the namespace for manipulating and deleting the object later
int32 type 		                       # Type of object
int32 action 	                       # 0 add/modify an object, 1 (deprecated), 2 deletes an object, 3 deletes all objects
geometry_msgs/Pose pose                 # Pose of the object
geometry_msgs/Vector3 scale             # Scale of the object 1,1,1 means default (usually 1 meter square)
std_msgs/ColorRGBA color             # Color [0.0-1.0]
duration lifetime                    # How long the object should last before being automatically deleted.  0 means forever
bool frame_locked                    # If this marker should be frame-locked, i.e. retransformed into its frame every timestep

#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)
geometry_msgs/Point[] points
#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)
#number of colors must either be 0 or equal to the number of points
#NOTE: alpha is not yet used
std_msgs/ColorRGBA[] colors

# NOTE: only used for text markers
string text

# NOTE: only used for MESH_RESOURCE markers
string mesh_resource
bool mesh_use_embedded_materials

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a
"""
  __slots__ = ['id','cost','comment','stage_id','markers']
  _slot_types = ['uint32','float32','string','uint32','visualization_msgs/Marker[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id,cost,comment,stage_id,markers

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SolutionInfo, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.id is None:
        self.id = 0
      if self.cost is None:
        self.cost = 0.
      if self.comment is None:
        self.comment = ''
      if self.stage_id is None:
        self.stage_id = 0
      if self.markers is None:
        self.markers = []
    else:
      self.id = 0
      self.cost = 0.
      self.comment = ''
      self.stage_id = 0
      self.markers = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_If().pack(_x.id, _x.cost))
      _x = self.comment
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.stage_id
      buff.write(_get_struct_I().pack(_x))
      length = len(self.markers)
      buff.write(_struct_I.pack(length))
      for val1 in self.markers:
        _v1 = val1.header
        _x = _v1.seq
        buff.write(_get_struct_I().pack(_x))
        _v2 = _v1.stamp
        _x = _v2
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v1.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.ns
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_3i().pack(_x.id, _x.type, _x.action))
        _v3 = val1.pose
        _v4 = _v3.position
        _x = _v4
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v5 = _v3.orientation
        _x = _v5
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v6 = val1.scale
        _x = _v6
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v7 = val1.color
        _x = _v7
        buff.write(_get_struct_4f().pack(_x.r, _x.g, _x.b, _x.a))
        _v8 = val1.lifetime
        _x = _v8
        buff.write(_get_struct_2i().pack(_x.secs, _x.nsecs))
        _x = val1.frame_locked
        buff.write(_get_struct_B().pack(_x))
        length = len(val1.points)
        buff.write(_struct_I.pack(length))
        for val2 in val1.points:
          _x = val2
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        length = len(val1.colors)
        buff.write(_struct_I.pack(length))
        for val2 in val1.colors:
          _x = val2
          buff.write(_get_struct_4f().pack(_x.r, _x.g, _x.b, _x.a))
        _x = val1.text
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.mesh_resource
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.mesh_use_embedded_materials
        buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.markers is None:
        self.markers = None
      end = 0
      _x = self
      start = end
      end += 8
      (_x.id, _x.cost,) = _get_struct_If().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.comment = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.comment = str[start:end]
      start = end
      end += 4
      (self.stage_id,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.markers = []
      for i in range(0, length):
        val1 = visualization_msgs.msg.Marker()
        _v9 = val1.header
        start = end
        end += 4
        (_v9.seq,) = _get_struct_I().unpack(str[start:end])
        _v10 = _v9.stamp
        _x = _v10
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v9.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v9.frame_id = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.ns = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.ns = str[start:end]
        _x = val1
        start = end
        end += 12
        (_x.id, _x.type, _x.action,) = _get_struct_3i().unpack(str[start:end])
        _v11 = val1.pose
        _v12 = _v11.position
        _x = _v12
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v13 = _v11.orientation
        _x = _v13
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v14 = val1.scale
        _x = _v14
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v15 = val1.color
        _x = _v15
        start = end
        end += 16
        (_x.r, _x.g, _x.b, _x.a,) = _get_struct_4f().unpack(str[start:end])
        _v16 = val1.lifetime
        _x = _v16
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2i().unpack(str[start:end])
        start = end
        end += 1
        (val1.frame_locked,) = _get_struct_B().unpack(str[start:end])
        val1.frame_locked = bool(val1.frame_locked)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.points = []
        for i in range(0, length):
          val2 = geometry_msgs.msg.Point()
          _x = val2
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          val1.points.append(val2)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.colors = []
        for i in range(0, length):
          val2 = std_msgs.msg.ColorRGBA()
          _x = val2
          start = end
          end += 16
          (_x.r, _x.g, _x.b, _x.a,) = _get_struct_4f().unpack(str[start:end])
          val1.colors.append(val2)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.text = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.text = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.mesh_resource = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.mesh_resource = str[start:end]
        start = end
        end += 1
        (val1.mesh_use_embedded_materials,) = _get_struct_B().unpack(str[start:end])
        val1.mesh_use_embedded_materials = bool(val1.mesh_use_embedded_materials)
        self.markers.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_If().pack(_x.id, _x.cost))
      _x = self.comment
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.stage_id
      buff.write(_get_struct_I().pack(_x))
      length = len(self.markers)
      buff.write(_struct_I.pack(length))
      for val1 in self.markers:
        _v17 = val1.header
        _x = _v17.seq
        buff.write(_get_struct_I().pack(_x))
        _v18 = _v17.stamp
        _x = _v18
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v17.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.ns
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_3i().pack(_x.id, _x.type, _x.action))
        _v19 = val1.pose
        _v20 = _v19.position
        _x = _v20
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v21 = _v19.orientation
        _x = _v21
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v22 = val1.scale
        _x = _v22
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v23 = val1.color
        _x = _v23
        buff.write(_get_struct_4f().pack(_x.r, _x.g, _x.b, _x.a))
        _v24 = val1.lifetime
        _x = _v24
        buff.write(_get_struct_2i().pack(_x.secs, _x.nsecs))
        _x = val1.frame_locked
        buff.write(_get_struct_B().pack(_x))
        length = len(val1.points)
        buff.write(_struct_I.pack(length))
        for val2 in val1.points:
          _x = val2
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        length = len(val1.colors)
        buff.write(_struct_I.pack(length))
        for val2 in val1.colors:
          _x = val2
          buff.write(_get_struct_4f().pack(_x.r, _x.g, _x.b, _x.a))
        _x = val1.text
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.mesh_resource
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.mesh_use_embedded_materials
        buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.markers is None:
        self.markers = None
      end = 0
      _x = self
      start = end
      end += 8
      (_x.id, _x.cost,) = _get_struct_If().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.comment = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.comment = str[start:end]
      start = end
      end += 4
      (self.stage_id,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.markers = []
      for i in range(0, length):
        val1 = visualization_msgs.msg.Marker()
        _v25 = val1.header
        start = end
        end += 4
        (_v25.seq,) = _get_struct_I().unpack(str[start:end])
        _v26 = _v25.stamp
        _x = _v26
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v25.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v25.frame_id = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.ns = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.ns = str[start:end]
        _x = val1
        start = end
        end += 12
        (_x.id, _x.type, _x.action,) = _get_struct_3i().unpack(str[start:end])
        _v27 = val1.pose
        _v28 = _v27.position
        _x = _v28
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v29 = _v27.orientation
        _x = _v29
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v30 = val1.scale
        _x = _v30
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v31 = val1.color
        _x = _v31
        start = end
        end += 16
        (_x.r, _x.g, _x.b, _x.a,) = _get_struct_4f().unpack(str[start:end])
        _v32 = val1.lifetime
        _x = _v32
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2i().unpack(str[start:end])
        start = end
        end += 1
        (val1.frame_locked,) = _get_struct_B().unpack(str[start:end])
        val1.frame_locked = bool(val1.frame_locked)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.points = []
        for i in range(0, length):
          val2 = geometry_msgs.msg.Point()
          _x = val2
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          val1.points.append(val2)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.colors = []
        for i in range(0, length):
          val2 = std_msgs.msg.ColorRGBA()
          _x = val2
          start = end
          end += 16
          (_x.r, _x.g, _x.b, _x.a,) = _get_struct_4f().unpack(str[start:end])
          val1.colors.append(val2)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.text = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.text = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.mesh_resource = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.mesh_resource = str[start:end]
        start = end
        end += 1
        (val1.mesh_use_embedded_materials,) = _get_struct_B().unpack(str[start:end])
        val1.mesh_use_embedded_materials = bool(val1.mesh_use_embedded_materials)
        self.markers.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_2i = None
def _get_struct_2i():
    global _struct_2i
    if _struct_2i is None:
        _struct_2i = struct.Struct("<2i")
    return _struct_2i
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_3i = None
def _get_struct_3i():
    global _struct_3i
    if _struct_3i is None:
        _struct_3i = struct.Struct("<3i")
    return _struct_3i
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_4f = None
def _get_struct_4f():
    global _struct_4f
    if _struct_4f is None:
        _struct_4f = struct.Struct("<4f")
    return _struct_4f
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_If = None
def _get_struct_If():
    global _struct_If
    if _struct_If is None:
        _struct_If = struct.Struct("<If")
    return _struct_If
