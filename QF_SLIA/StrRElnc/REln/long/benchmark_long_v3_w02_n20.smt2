(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))

(assert (str.in_re z (re.++ (str.to_re "65") (re.++ (str.to_re "8") (re.+ (str.to_re "38"))))))
(assert (str.in_re x (re.union (re.+ (re.* (str.to_re "16"))) (re.+ (str.to_re "37")))))
(assert (str.in_re y (re.+ (re.++ (re.++ (re.+ (str.to_re "562")) (re.range "0" "4")) (str.to_re "836")))))

(assert (< (+ (* (- 8) (str.len x)) (* (- 3) (str.len y)) (* (- 3) (str.len z))) 44))
(assert (= (+ (str.to_int x) (* (- 6) (str.to_int y)) (* 3 (str.to_int z))) 9))

(check-sat)