const models = require('../../model');

exports.login = async (req, res) => {
    const { body } = req;

    try {
        const user = await models.User.findOne({
            where: {
                id: body.id,
                pw: body.pw,
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
