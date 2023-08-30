/**
 * @swagger
 * /list-years:
 *   get:
 *     summary: Lấy danh sách các năm trong timeline
 *     tags: [Timeline]
 *     responses:
 *       200:
 *         description: Trả về danh sách các năm trong timeline
 *       404:
 *         description: Không tìm thấy danh sách năm trong timeline
 */

/**
 * @swagger
 * /list-years/{year}:
 *   get:
 *     summary: Lấy thông tin năm trong timeline bằng ID
 *     parameters:
 *       - in: path
 *         name: year
 *         required: true
 *         description: Năm trong timeline cần lấy thông tin
 *         schema:
 *           type: string
 *     tags: [Timeline]
 *     responses:
 *       200:
 *         description: Trả về thông tin về năm trong timeline
 *       404:
 *         description: Không tìm thấy thông tin năm trong timeline
 */
