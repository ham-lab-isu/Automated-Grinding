# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from moveit_task_constructor_msgs/TaskStatistics.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import moveit_task_constructor_msgs.msg

class TaskStatistics(genpy.Message):
  _md5sum = "f18c50166b7446a7ec6179ed1d6aa3d1"
  _type = "moveit_task_constructor_msgs/TaskStatistics"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# unique id of generating task
string task_id

# list of all stages, including the task stage itself
StageStatistics[] stages

================================================================================
MSG: moveit_task_constructor_msgs/StageStatistics
# dynamically changing information for a stage

# unique id within task
uint32 id

# successful solution IDs of this stage, sorted by increasing cost
uint32[] solved

# (optional) failed solution IDs of this stage
uint32[] failed
# number of failed solutions (if failed is empty)
uint32   num_failed
# total computation time in seconds
float64 total_compute_time
"""
  __slots__ = ['task_id','stages']
  _slot_types = ['string','moveit_task_constructor_msgs/StageStatistics[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       task_id,stages

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TaskStatistics, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.task_id is None:
        self.task_id = ''
      if self.stages is None:
        self.stages = []
    else:
      self.task_id = ''
      self.stages = []

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
      _x = self.task_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.stages)
      buff.write(_struct_I.pack(length))
      for val1 in self.stages:
        _x = val1.id
        buff.write(_get_struct_I().pack(_x))
        length = len(val1.solved)
        buff.write(_struct_I.pack(length))
        pattern = '<%sI'%length
        buff.write(struct.Struct(pattern).pack(*val1.solved))
        length = len(val1.failed)
        buff.write(_struct_I.pack(length))
        pattern = '<%sI'%length
        buff.write(struct.Struct(pattern).pack(*val1.failed))
        _x = val1
        buff.write(_get_struct_Id().pack(_x.num_failed, _x.total_compute_time))
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
      if self.stages is None:
        self.stages = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.task_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.task_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.stages = []
      for i in range(0, length):
        val1 = moveit_task_constructor_msgs.msg.StageStatistics()
        start = end
        end += 4
        (val1.id,) = _get_struct_I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sI'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.solved = s.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sI'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.failed = s.unpack(str[start:end])
        _x = val1
        start = end
        end += 12
        (_x.num_failed, _x.total_compute_time,) = _get_struct_Id().unpack(str[start:end])
        self.stages.append(val1)
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
      _x = self.task_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.stages)
      buff.write(_struct_I.pack(length))
      for val1 in self.stages:
        _x = val1.id
        buff.write(_get_struct_I().pack(_x))
        length = len(val1.solved)
        buff.write(_struct_I.pack(length))
        pattern = '<%sI'%length
        buff.write(val1.solved.tostring())
        length = len(val1.failed)
        buff.write(_struct_I.pack(length))
        pattern = '<%sI'%length
        buff.write(val1.failed.tostring())
        _x = val1
        buff.write(_get_struct_Id().pack(_x.num_failed, _x.total_compute_time))
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
      if self.stages is None:
        self.stages = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.task_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.task_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.stages = []
      for i in range(0, length):
        val1 = moveit_task_constructor_msgs.msg.StageStatistics()
        start = end
        end += 4
        (val1.id,) = _get_struct_I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sI'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.solved = numpy.frombuffer(str[start:end], dtype=numpy.uint32, count=length)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sI'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.failed = numpy.frombuffer(str[start:end], dtype=numpy.uint32, count=length)
        _x = val1
        start = end
        end += 12
        (_x.num_failed, _x.total_compute_time,) = _get_struct_Id().unpack(str[start:end])
        self.stages.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_Id = None
def _get_struct_Id():
    global _struct_Id
    if _struct_Id is None:
        _struct_Id = struct.Struct("<Id")
    return _struct_Id