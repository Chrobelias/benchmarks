(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (= (str.++ y z) (str.++ x "55")))

(assert (str.in_re x (re.union (re.* (re.+ (re.range "2" "5"))) (re.* (str.to_re "828")))))
(assert (str.in_re z (re.+ (re.+ (re.union (re.range "0" "7") (str.to_re "57"))))))
(assert (str.in_re y (re.+ (re.++ (re.* (re.range "0" "7")) (str.to_re "3")))))

(assert (= (+ (- (str.len x)) (* (- 4) (str.len y)) (* (- 10) (str.len z))) 88))
(assert (>= (+ (* 6 (str.to_int x)) (* (- 2) (str.to_int y)) (* 8 (str.to_int z))) 68))

(check-sat)