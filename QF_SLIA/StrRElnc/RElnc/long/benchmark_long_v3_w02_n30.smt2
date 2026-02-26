(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))

(assert (= (str.++ z x) (str.++ y "57")))

(assert (str.in_re z (re.* (re.union (re.range "2" "7") (str.to_re "8")))))
(assert (str.in_re x (re.+ (re.* (re.union (re.+ (re.range "6" "8")) (str.to_re "84"))))))
(assert (str.in_re y (re.union (re.+ (str.to_re "453")) (re.union (str.to_re "1") (re.range "0" "2")))))

(assert (< (+ (* (- 2) (str.len x)) (* (- 9) (str.to_int z))) 37))

(check-sat)