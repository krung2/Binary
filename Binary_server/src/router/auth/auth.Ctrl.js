const models = require('../../model');

exports.login = async (req, res) => {
    const { body } = req;

    try {
        const user = await models.User.findOne({
            where: {
                userId: body.userId,
                userPw: body.userPw,
            },
        });

        if (user) {
            console.log("로그인 성공!");
            return res.status(200).json({
                message: "로그인 성공!",
            });
        };

        return res.status(401).json({
            message: "로그인 실패...",
        });

    } catch (err) {
        console.log(err);
        return res.status(500).json({
            message: "서버 오류",
        });
    }
}