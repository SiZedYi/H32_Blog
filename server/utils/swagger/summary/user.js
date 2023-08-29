/**
 * @swagger
 * /api/list-users:
 *   get:
 *     summary: Lấy danh sách người dùng
 *     description: Trả về danh sách các người dùng.
 *     tags: [Users]
 *     responses:
 *       200:
 *         description: Danh sách người dùng.
 */

/**
 * @swagger
 * /api/list-users/{userID}:
 *   get:
 *     summary: Lấy thông tin người dùng bằng ID
 *     parameters:
 *       - in: path
 *         name: userID
 *         required: true
 *         description: ID của người dùng cần lấy thông tin
 *         schema:
 *           type: string
 *     tags: [Users]
 *
 *     responses:
 *       200:
 *         description: Trả về thông tin người dùng
 *       404:
 *         description: Không tìm thấy người dùng
 */

/**
 * @swagger
 * /api/list-users/{userID}/roles:
 *   get:
 *     summary: Lấy danh sách vai trò của người dùng bằng ID
 *     parameters:
 *       - in: path
 *         name: userID
 *         required: true
 *         description: ID của người dùng cần lấy danh sách vai trò
 *         schema:
 *           type: string
 *     tags: [Users]
 *     responses:
 *       200:
 *         description: Trả về danh sách vai trò của người dùng
 *       404:
 *         description: Không tìm thấy người dùng hoặc vai trò
 */