(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ z x) (str.++ y "75")))

(assert (str.in_re z (re.union (re.+ (re.range "7" "9")) (re.union (re.* (str.to_re "129")) (str.to_re "2")))))
(assert (str.in_re x (re.* (re.union (re.range "2" "7") (re.++ (str.to_re "88") (str.to_re "13"))))))
(assert (str.in_re y (re.union (re.+ (str.to_re "22")) (re.++ (str.to_re "849") (str.to_re "930")))))

(assert (< (+ (* (- 7) (str.len y)) (* 10 (str.to_int y)) (* 8 (str.to_int z))) 60))
(assert (< (+ (* (- 7) (str.len x)) (* 8 (str.len y)) (* 6 (str.len z))) 32))

(check-sat)