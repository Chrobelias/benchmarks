(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y x) (str.++ "68" z)))

(assert (str.in_re y (re.* (re.++ (re.range "4" "8") (re.* (str.to_re "33"))))))
(assert (str.in_re z (re.union (re.* (re.* (re.range "0" "9"))) (re.* (str.to_re "25")))))
(assert (str.in_re x (re.+ (re.* (re.union (str.to_re "31") (re.* (str.to_re "708")))))))

(assert (<= (+ (* 5 (str.to_int x)) (* 3 (str.to_int y)) (* 6 (str.to_int z))) 98))
(assert (= (+ (* 2 (str.len x)) (* (- 10) (str.len y)) (- (str.len z))) 92))

(check-sat)