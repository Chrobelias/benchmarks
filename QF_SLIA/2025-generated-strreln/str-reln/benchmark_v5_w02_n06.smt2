(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (str.in_re x (re.* (re.union (re.union (str.to_re "19") (str.to_re "84")) (re.range "2" "7")))))
(assert (str.in_re y (re.++ (str.to_re "3") (re.* (str.to_re "24")))))
(assert (str.in_re z (re.union (re.+ (str.to_re "5")) (str.to_re "48"))))
(assert (str.in_re a (re.* (str.to_re "722"))))
(assert (str.in_re b (re.union (re.union (re.range "2" "8") (re.union (str.to_re "785") (re.+ (str.to_re "55")))) (str.to_re "69"))))

(assert (< (+ (- (str.len x)) (* 4 (str.len b)) (* 8 (str.to_int a))) 43))

(check-sat)