﻿/* ->
 * -> 该代码使用工具生成，请勿手动修改 
 * -> 生成时间： 2015-10-16 09:34:28 
 */

using System;

namespace Ctrip.SOA.Repository.User.Model
{
    /// <summary>
    /// User || 
    /// </summary>    
    [Serializable]
    public class UserEntity
    {
        /// <summary>
        /// 
        /// </summary>
        public long UserId { get; set; }

        /// <summary>
        /// 
        /// </summary>
        public string UserName { get; set; }

        /// <summary>
        /// 
        /// </summary>
        public DateTime CreateTime { get; set; }

        /// <summary>
        /// 
        /// </summary>
        public DateTime? UpdateTime { get; set; }

    }
}
