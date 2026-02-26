(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))

(assert (= (str.++ y z) (str.++ x "62")))

(assert (str.in_re z (re.* (re.union (str.to_re "945") (re.range "2" "6")))))
(assert (str.in_re y (re.union (re.+ (re.range "4" "7")) (re.+ (str.to_re "0")))))
(assert (str.in_re x (re.union (re.range "5" "8") (re.* (re.* (re.+ (str.to_re "15")))))))

(assert (<= (+ (* 5 (str.len x)) (* 10 (str.to_int y))) 66))

(check-sat)