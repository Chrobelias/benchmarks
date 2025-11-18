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

(assert (str.in_re x (re.* (re.++ (re.range "3" "6") (re.++ (re.range "0" "3") (re.+ (str.to_re "30")))))))
(assert (str.in_re y (re.++ (re.union (str.to_re "0") (re.+ (str.to_re "48"))) (re.* (re.range "6" "8")))))
(assert (str.in_re z (re.* (re.++ (re.* (str.to_re "754")) (str.to_re "9")))))
(assert (str.in_re a (re.union (str.to_re "64") (re.union (re.* (re.+ (str.to_re "660"))) (str.to_re "27")))))
(assert (str.in_re b (re.union (re.+ (str.to_re "884")) (re.union (re.range "7" "9") (re.+ (re.range "0" "9"))))))

(assert (> (+ (* 9 (str.len x)) (* (- 9) (str.to_int y)) (* 3 (str.to_int z)) (* (- 3) (str.to_int a))) 96))
(assert (< (+ (str.to_int x) (str.to_int y) (* 9 (str.to_int z)) (* 9 (str.to_int a)) (str.to_int b)) 40))
(assert (< (+ (* (- 3) (str.len x)) (* (- 5) (str.len y)) (* (- 9) (str.len z)) (* 4 (str.len a)) (* (- 5) (str.len b))) 41))
(assert (= (+ (* 9 (str.to_int x)) (* (- 10) (str.to_int y)) (str.to_int z) (* 5 (str.to_int a)) (* 8 (str.to_int b))) 65))
(assert (> (+ (* 4 (str.to_int x)) (* (- 4) (str.to_int z)) (* 2 (str.to_int a)) (* 4 (str.to_int b))) 73))

(check-sat)