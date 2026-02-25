(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re z (re.++ (str.to_re "476") (re.union (re.++ (str.to_re "540") (re.+ (str.to_re "887"))) (str.to_re "856")))))
(assert (str.in_re x (re.++ (re.++ (str.to_re "7") (str.to_re "80")) (re.* (str.to_re "574")))))
(assert (str.in_re y (re.+ (re.++ (re.* (re.* (re.range "2" "5"))) (str.to_re "0")))))

(assert (< (+ (* (- 5) (str.len z)) (* (- 3) (str.to_int x))) 83))

(check-sat)