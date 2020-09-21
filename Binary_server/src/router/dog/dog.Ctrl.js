const { raw } = require('body-parser');
const model = require('../../model');
const models = require('../../model');

exports.getDogs = async (req, res) => {
    try {
        const dog = await models.Dog.findOne ({
            where: {
                idx: req.params.idx,
            },
            raw: true,
        });

        res.status(200).json ({
            data: {
                post,
            },
        });

    } catch (err) {
        console.log(err);
        return res.status(500).json({
            message: "서버 오류",
        });
    }
}

exports.getDog = async (req, res) => {
    try {
        let dogs = []
        if (req.query.keyword) {
            dogs = await models.Dog.findAll ({
                where: {
                    title: {
                        [Op.like]: "%" + req.query.keyword + "%"
                    }
                },
                order: [
                    ['createdAt', 'DESC'],
                ],
                raw: true,
            });
        } else {
            dogs = await models.dog.findAll ({
                order: [
                    ['createdAt', 'DESC'],
                ],
                raw: true,
            });
        }

        return res.status(200).json ({
            message: '조회 성공!',
            data: {
                dogs,
            }
        });

    } catch (err) {
        console.log(err);
        return res.status(500).json({
            message: "서버 오류",
        });
    }
}

exports.postDog = async (req, res) => {
    const { body } = req;

    try {
        await models.Dog.create({
            userId: body.id,
            dogName: body.dogName,
            breed: body.breed,
            weight: body.weight,
            bloodType: body.bloodType,
        });

        console.log("정보 넣기 성공!");
        return res.status(200).json({
            message: "정보 넣기 성공!",
        });
    } catch (err) {
        console.log(err)
        return res.status(500).json({
            message: "서버 오류",
        })
    }
}

exports.modifyDog = async (req, res) => {
    const { body, user } = req;
    const { idx } = req.params;

    try {
        await models.Dog.update (body, {
            where: {
                idx,
            }
        });

        return res.status(200).json ({
            message: "게시글 수정 성공!",
        });

    } catch (err) {
        console.log(err);
        return res.status(500).json ({
            message: "서버 오류",
        });
    }
}