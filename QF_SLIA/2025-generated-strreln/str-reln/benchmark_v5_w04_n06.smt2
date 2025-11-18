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

(assert (str.in_re x (re.* (re.+ (re.++ (str.to_re "7") (str.to_re "580"))))))
(assert (str.in_re y (re.union (str.to_re "498") (re.union (re.union (str.to_re "99") (re.+ (str.to_re "732"))) (str.to_re "658")))))
(assert (str.in_re z (re.* (str.to_re "43"))))
(assert (str.in_re a (re.union (re.* (re.range "2" "9")) (re.union (str.to_re "34") (str.to_re "93")))))
(assert (str.in_re b (re.++ (str.to_re "2") (re.++ (str.to_re "949") (re.* (re.* (str.to_re "2")))))))

(assert (> (+ (* (- 2) (str.len x)) (* (- 7) (str.len y)) (* (- 7) (str.len z)) (* (- 10) (str.len a)) (* 8 (str.len b))) 69))
(assert (< (+ (* 6 (str.len x)) (- (str.len b)) (* (- 3) (str.to_int y)) (* (- 8) (str.to_int b))) 67))
(assert (< (+ (* 9 (str.to_int x)) (str.to_int z) (* (- 10) (str.to_int a)) (* 9 (str.to_int b))) 87))

(check-sat)